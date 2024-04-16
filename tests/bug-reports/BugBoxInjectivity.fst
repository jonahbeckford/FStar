module BugBoxInjectivity
// #restart-solver
// #push-options "--log_queries --query_stats --debug BugBoxInjectivity --debug_level SMTEncoding"
module CC = FStar.Cardinality.Universes
noeq
type test (a:Type u#0 -> Type u#1) : Type u#1 =
  | Mk : test a

let const (f:Type u#1) : Type u#0 -> Type u#1 = fun _ -> f
let itest (f:Type u#1) : Type u#1 = test (const f)
let itest_inhabited (f:Type u#1) : itest f = Mk 
let const_inversion (f0 f1:Type u#1)
: Lemma 
  (requires const f0 == const f1)
  (ensures f0 == f1)
= let _f0 = const f0 int in
  let _f1 = const f1 int in
  assert (_f0 == _f1);
  ()
let itest_injective (f0 f1:Type u#1) 
: Lemma
  (ensures itest f0 == itest f1 ==> const f0 == const f1)
= let x : test (const f0) = itest_inhabited f0 in
  let Mk #_ = x in
  ()
open FStar.Functions
let itest_injective' : squash (is_inj itest) = 
  introduce forall f0 f1.
      itest f0 == itest f1 ==> f0 == f1
  with introduce _ ==> _
  with _ . (
    itest_injective f0 f1;
    const_inversion f0 f1
  )
[@@expect_failure [189]] //itest is not in the right universe to use this lemma
let fals : squash False =
  CC.no_inj_universes itest


#push-options "--ext 'compat:injectivity'"
noeq
type test2 (a:Type u#0 -> Type u#2) : Type u#1 =
  | Mk2 : test2 a
#pop-options
let const2 (f:Type u#2) : Type u#0 -> Type u#2 = fun _ -> f
let itest2 (f:Type u#2) : Type u#1 = test2 (const2 f)
let itest2_inhabited (f:Type u#2) : itest2 f = Mk2
let const2_inversion (f0 f1:Type u#2)
: Lemma 
  (requires const2 f0 == const2 f1)
  (ensures f0 == f1)
= let _f0 = const2 f0 (FStar.Universe.raise_t int) in
  let _f1 = const2 f1 (FStar.Universe.raise_t int) in
  assert (_f0 == _f1);
  ()
let itest2_injective (f0 f1:Type u#2) 
: Lemma
  (ensures itest2 f0 == itest2 f1 ==> const2 f0 == const2 f1)
= let x : test2 (const2 f0) = itest2_inhabited f0 in
  let Mk2 #_ = x in
  ()
open FStar.Functions
let itest2_injective' : squash (is_inj itest2) = 
  introduce forall f0 f1.
      itest2 f0 == itest2 f1 ==> f0 == f1
  with introduce _ ==> _
  with _ . (
    itest2_injective f0 f1;
    const2_inversion f0 f1
  )
let fals () : squash False =
  CC.no_inj_universes itest2
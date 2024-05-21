open Prims
let (compare_uv :
  FStar_Syntax_Syntax.ctx_uvar -> FStar_Syntax_Syntax.ctx_uvar -> Prims.int)
  =
  fun uv1 ->
    fun uv2 ->
      let uu___ =
        FStar_Syntax_Unionfind.uvar_id uv1.FStar_Syntax_Syntax.ctx_uvar_head in
      let uu___1 =
        FStar_Syntax_Unionfind.uvar_id uv2.FStar_Syntax_Syntax.ctx_uvar_head in
      uu___ - uu___1
let (compare_universe_uvar :
  FStar_Syntax_Syntax.universe_uvar ->
    FStar_Syntax_Syntax.universe_uvar -> Prims.int)
  =
  fun x ->
    fun y ->
      let uu___ = FStar_Syntax_Unionfind.univ_uvar_id x in
      let uu___1 = FStar_Syntax_Unionfind.univ_uvar_id y in uu___ - uu___1
let (deq_ctx_uvar : FStar_Syntax_Syntax.ctx_uvar FStar_Class_Deq.deq) =
  {
    FStar_Class_Deq.op_Equals_Question =
      (fun u ->
         fun v ->
           let uu___ =
             FStar_Syntax_Unionfind.uvar_id
               u.FStar_Syntax_Syntax.ctx_uvar_head in
           let uu___1 =
             FStar_Syntax_Unionfind.uvar_id
               v.FStar_Syntax_Syntax.ctx_uvar_head in
           FStar_Class_Deq.op_Equals_Question
             (FStar_Class_Ord.ord_eq FStar_Class_Ord.ord_int) uu___ uu___1)
  }
let (ord_ctx_uvar : FStar_Syntax_Syntax.ctx_uvar FStar_Class_Ord.ord) =
  {
    FStar_Class_Ord.super = deq_ctx_uvar;
    FStar_Class_Ord.cmp =
      (fun u ->
         fun v ->
           let uu___ =
             FStar_Syntax_Unionfind.uvar_id
               u.FStar_Syntax_Syntax.ctx_uvar_head in
           let uu___1 =
             FStar_Syntax_Unionfind.uvar_id
               v.FStar_Syntax_Syntax.ctx_uvar_head in
           FStar_Class_Ord.cmp FStar_Class_Ord.ord_int uu___ uu___1)
  }
let (deq_univ_uvar : FStar_Syntax_Syntax.universe_uvar FStar_Class_Deq.deq) =
  {
    FStar_Class_Deq.op_Equals_Question =
      (fun u ->
         fun v ->
           let uu___ = FStar_Syntax_Unionfind.univ_uvar_id u in
           let uu___1 = FStar_Syntax_Unionfind.univ_uvar_id v in
           FStar_Class_Deq.op_Equals_Question
             (FStar_Class_Ord.ord_eq FStar_Class_Ord.ord_int) uu___ uu___1)
  }
let (ord_univ_uvar : FStar_Syntax_Syntax.universe_uvar FStar_Class_Ord.ord) =
  {
    FStar_Class_Ord.super = deq_univ_uvar;
    FStar_Class_Ord.cmp =
      (fun u ->
         fun v ->
           let uu___ = FStar_Syntax_Unionfind.univ_uvar_id u in
           let uu___1 = FStar_Syntax_Unionfind.univ_uvar_id v in
           FStar_Class_Ord.cmp FStar_Class_Ord.ord_int uu___ uu___1)
  }
let (ctx_uvar_typ :
  FStar_Syntax_Syntax.ctx_uvar ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
  =
  fun u ->
    let uu___ =
      FStar_Syntax_Unionfind.find_decoration
        u.FStar_Syntax_Syntax.ctx_uvar_head in
    uu___.FStar_Syntax_Syntax.uvar_decoration_typ
type use_cache_t =
  | Def 
  | NoCache 
  | Full 
let (uu___is_Def : use_cache_t -> Prims.bool) =
  fun projectee -> match projectee with | Def -> true | uu___ -> false
let (uu___is_NoCache : use_cache_t -> Prims.bool) =
  fun projectee -> match projectee with | NoCache -> true | uu___ -> false
let (uu___is_Full : use_cache_t -> Prims.bool) =
  fun projectee -> match projectee with | Full -> true | uu___ -> false
type free_vars_and_fvars =
  (FStar_Syntax_Syntax.free_vars * FStar_Ident.lident FStar_Compiler_RBSet.t)
let rec snoc :
  'a . 'a FStar_Class_Deq.deq -> 'a Prims.list -> 'a -> 'a Prims.list =
  fun uu___ ->
    fun xx ->
      fun y ->
        match xx with
        | [] -> [y]
        | x::xx' ->
            let uu___1 = FStar_Class_Deq.op_Equals_Question uu___ x y in
            if uu___1
            then xx
            else (let uu___3 = snoc uu___ xx' y in x :: uu___3)
let op_At_At :
  'a .
    'a FStar_Class_Deq.deq -> 'a Prims.list -> 'a Prims.list -> 'a Prims.list
  =
  fun uu___ ->
    fun xs ->
      fun ys ->
        FStar_Compiler_List.fold_left (fun xs1 -> fun y -> snoc uu___ xs1 y)
          xs ys
let (no_free_vars : free_vars_and_fvars) =
  let uu___ =
    let uu___1 =
      Obj.magic
        (FStar_Class_Setlike.empty ()
           (Obj.magic
              (FStar_Compiler_FlatSet.setlike_flat_set
                 FStar_Syntax_Syntax.ord_bv)) ()) in
    let uu___2 =
      Obj.magic
        (FStar_Class_Setlike.empty ()
           (Obj.magic (FStar_Compiler_FlatSet.setlike_flat_set ord_ctx_uvar))
           ()) in
    let uu___3 =
      Obj.magic
        (FStar_Class_Setlike.empty ()
           (Obj.magic (FStar_Compiler_FlatSet.setlike_flat_set ord_univ_uvar))
           ()) in
    let uu___4 =
      Obj.magic
        (FStar_Class_Setlike.empty ()
           (Obj.magic
              (FStar_Compiler_FlatSet.setlike_flat_set
                 FStar_Syntax_Syntax.ord_ident)) ()) in
    {
      FStar_Syntax_Syntax.free_names = uu___1;
      FStar_Syntax_Syntax.free_uvars = uu___2;
      FStar_Syntax_Syntax.free_univs = uu___3;
      FStar_Syntax_Syntax.free_univ_names = uu___4
    } in
  let uu___1 =
    Obj.magic
      (FStar_Class_Setlike.empty ()
         (Obj.magic
            (FStar_Compiler_RBSet.setlike_rbset FStar_Syntax_Syntax.ord_fv))
         ()) in
  (uu___, uu___1)
let (singleton_fvar : FStar_Syntax_Syntax.fv -> free_vars_and_fvars) =
  fun fv ->
    let uu___ =
      let uu___1 =
        Obj.magic
          (FStar_Class_Setlike.empty ()
             (Obj.magic
                (FStar_Compiler_RBSet.setlike_rbset
                   FStar_Syntax_Syntax.ord_fv)) ()) in
      Obj.magic
        (FStar_Class_Setlike.add ()
           (Obj.magic
              (FStar_Compiler_RBSet.setlike_rbset FStar_Syntax_Syntax.ord_fv))
           (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
           (Obj.magic uu___1)) in
    ((FStar_Pervasives_Native.fst no_free_vars), uu___)
let (singleton_bv :
  FStar_Syntax_Syntax.bv ->
    (FStar_Syntax_Syntax.free_vars * FStar_Ident.lident
      FStar_Compiler_RBSet.t))
  =
  fun x ->
    let uu___ =
      let uu___1 = FStar_Pervasives_Native.fst no_free_vars in
      let uu___2 =
        Obj.magic
          (FStar_Class_Setlike.singleton ()
             (Obj.magic
                (FStar_Compiler_FlatSet.setlike_flat_set
                   FStar_Syntax_Syntax.ord_bv)) x) in
      {
        FStar_Syntax_Syntax.free_names = uu___2;
        FStar_Syntax_Syntax.free_uvars =
          (uu___1.FStar_Syntax_Syntax.free_uvars);
        FStar_Syntax_Syntax.free_univs =
          (uu___1.FStar_Syntax_Syntax.free_univs);
        FStar_Syntax_Syntax.free_univ_names =
          (uu___1.FStar_Syntax_Syntax.free_univ_names)
      } in
    (uu___, (FStar_Pervasives_Native.snd no_free_vars))
let (singleton_uv :
  FStar_Syntax_Syntax.ctx_uvar ->
    (FStar_Syntax_Syntax.free_vars * FStar_Ident.lident
      FStar_Compiler_RBSet.t))
  =
  fun x ->
    let uu___ =
      let uu___1 = FStar_Pervasives_Native.fst no_free_vars in
      let uu___2 =
        Obj.magic
          (FStar_Class_Setlike.singleton ()
             (Obj.magic
                (FStar_Compiler_FlatSet.setlike_flat_set ord_ctx_uvar)) x) in
      {
        FStar_Syntax_Syntax.free_names =
          (uu___1.FStar_Syntax_Syntax.free_names);
        FStar_Syntax_Syntax.free_uvars = uu___2;
        FStar_Syntax_Syntax.free_univs =
          (uu___1.FStar_Syntax_Syntax.free_univs);
        FStar_Syntax_Syntax.free_univ_names =
          (uu___1.FStar_Syntax_Syntax.free_univ_names)
      } in
    (uu___, (FStar_Pervasives_Native.snd no_free_vars))
let (singleton_univ :
  FStar_Syntax_Syntax.universe_uvar ->
    (FStar_Syntax_Syntax.free_vars * FStar_Ident.lident
      FStar_Compiler_RBSet.t))
  =
  fun x ->
    let uu___ =
      let uu___1 = FStar_Pervasives_Native.fst no_free_vars in
      let uu___2 =
        Obj.magic
          (FStar_Class_Setlike.singleton ()
             (Obj.magic
                (FStar_Compiler_FlatSet.setlike_flat_set ord_univ_uvar)) x) in
      {
        FStar_Syntax_Syntax.free_names =
          (uu___1.FStar_Syntax_Syntax.free_names);
        FStar_Syntax_Syntax.free_uvars =
          (uu___1.FStar_Syntax_Syntax.free_uvars);
        FStar_Syntax_Syntax.free_univs = uu___2;
        FStar_Syntax_Syntax.free_univ_names =
          (uu___1.FStar_Syntax_Syntax.free_univ_names)
      } in
    (uu___, (FStar_Pervasives_Native.snd no_free_vars))
let (singleton_univ_name :
  FStar_Syntax_Syntax.univ_name ->
    (FStar_Syntax_Syntax.free_vars * FStar_Ident.lident
      FStar_Compiler_RBSet.t))
  =
  fun x ->
    let uu___ =
      let uu___1 = FStar_Pervasives_Native.fst no_free_vars in
      let uu___2 =
        Obj.magic
          (FStar_Class_Setlike.singleton ()
             (Obj.magic
                (FStar_Compiler_FlatSet.setlike_flat_set
                   FStar_Syntax_Syntax.ord_ident)) x) in
      {
        FStar_Syntax_Syntax.free_names =
          (uu___1.FStar_Syntax_Syntax.free_names);
        FStar_Syntax_Syntax.free_uvars =
          (uu___1.FStar_Syntax_Syntax.free_uvars);
        FStar_Syntax_Syntax.free_univs =
          (uu___1.FStar_Syntax_Syntax.free_univs);
        FStar_Syntax_Syntax.free_univ_names = uu___2
      } in
    (uu___, (FStar_Pervasives_Native.snd no_free_vars))
let (op_Plus_Plus :
  free_vars_and_fvars ->
    free_vars_and_fvars ->
      (FStar_Syntax_Syntax.free_vars * FStar_Ident.lident
        FStar_Compiler_RBSet.t))
  =
  fun f1 ->
    fun f2 ->
      let uu___ =
        let uu___1 =
          Obj.magic
            (FStar_Class_Setlike.union ()
               (Obj.magic
                  (FStar_Compiler_FlatSet.setlike_flat_set
                     FStar_Syntax_Syntax.ord_bv))
               (Obj.magic
                  (FStar_Pervasives_Native.fst f1).FStar_Syntax_Syntax.free_names)
               (Obj.magic
                  (FStar_Pervasives_Native.fst f2).FStar_Syntax_Syntax.free_names)) in
        let uu___2 =
          Obj.magic
            (FStar_Class_Setlike.union ()
               (Obj.magic
                  (FStar_Compiler_FlatSet.setlike_flat_set ord_ctx_uvar))
               (Obj.magic
                  (FStar_Pervasives_Native.fst f1).FStar_Syntax_Syntax.free_uvars)
               (Obj.magic
                  (FStar_Pervasives_Native.fst f2).FStar_Syntax_Syntax.free_uvars)) in
        let uu___3 =
          Obj.magic
            (FStar_Class_Setlike.union ()
               (Obj.magic
                  (FStar_Compiler_FlatSet.setlike_flat_set ord_univ_uvar))
               (Obj.magic
                  (FStar_Pervasives_Native.fst f1).FStar_Syntax_Syntax.free_univs)
               (Obj.magic
                  (FStar_Pervasives_Native.fst f2).FStar_Syntax_Syntax.free_univs)) in
        let uu___4 =
          Obj.magic
            (FStar_Class_Setlike.union ()
               (Obj.magic
                  (FStar_Compiler_FlatSet.setlike_flat_set
                     FStar_Syntax_Syntax.ord_ident))
               (Obj.magic
                  (FStar_Pervasives_Native.fst f1).FStar_Syntax_Syntax.free_univ_names)
               (Obj.magic
                  (FStar_Pervasives_Native.fst f2).FStar_Syntax_Syntax.free_univ_names)) in
        {
          FStar_Syntax_Syntax.free_names = uu___1;
          FStar_Syntax_Syntax.free_uvars = uu___2;
          FStar_Syntax_Syntax.free_univs = uu___3;
          FStar_Syntax_Syntax.free_univ_names = uu___4
        } in
      let uu___1 =
        Obj.magic
          (FStar_Class_Setlike.union ()
             (Obj.magic
                (FStar_Compiler_RBSet.setlike_rbset
                   FStar_Syntax_Syntax.ord_fv))
             (Obj.magic (FStar_Pervasives_Native.snd f1))
             (Obj.magic (FStar_Pervasives_Native.snd f2))) in
      (uu___, uu___1)
let rec (free_univs : FStar_Syntax_Syntax.universe -> free_vars_and_fvars) =
  fun u ->
    let uu___ = FStar_Syntax_Subst.compress_univ u in
    match uu___ with
    | FStar_Syntax_Syntax.U_zero -> no_free_vars
    | FStar_Syntax_Syntax.U_bvar uu___1 -> no_free_vars
    | FStar_Syntax_Syntax.U_unknown -> no_free_vars
    | FStar_Syntax_Syntax.U_name uname -> singleton_univ_name uname
    | FStar_Syntax_Syntax.U_succ u1 -> free_univs u1
    | FStar_Syntax_Syntax.U_max us ->
        FStar_Compiler_List.fold_left
          (fun out ->
             fun x -> let uu___1 = free_univs x in op_Plus_Plus out uu___1)
          no_free_vars us
    | FStar_Syntax_Syntax.U_unif u1 -> singleton_univ u1
let rec (free_names_and_uvs' :
  FStar_Syntax_Syntax.term -> use_cache_t -> free_vars_and_fvars) =
  fun tm ->
    fun use_cache ->
      let aux_binders bs from_body =
        let from_binders = free_names_and_uvars_binders bs use_cache in
        op_Plus_Plus from_binders from_body in
      let t = FStar_Syntax_Subst.compress tm in
      match t.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_delayed uu___ ->
          FStar_Compiler_Effect.failwith "Impossible"
      | FStar_Syntax_Syntax.Tm_name x -> singleton_bv x
      | FStar_Syntax_Syntax.Tm_uvar (uv, (s, uu___)) ->
          let uu___1 = singleton_uv uv in
          let uu___2 =
            if use_cache = Full
            then
              let uu___3 = ctx_uvar_typ uv in
              free_names_and_uvars uu___3 use_cache
            else no_free_vars in
          op_Plus_Plus uu___1 uu___2
      | FStar_Syntax_Syntax.Tm_type u -> free_univs u
      | FStar_Syntax_Syntax.Tm_bvar uu___ -> no_free_vars
      | FStar_Syntax_Syntax.Tm_fvar fv -> singleton_fvar fv
      | FStar_Syntax_Syntax.Tm_constant uu___ -> no_free_vars
      | FStar_Syntax_Syntax.Tm_lazy uu___ -> no_free_vars
      | FStar_Syntax_Syntax.Tm_unknown -> no_free_vars
      | FStar_Syntax_Syntax.Tm_uinst (t1, us) ->
          let f = free_names_and_uvars t1 use_cache in
          FStar_Compiler_List.fold_left
            (fun out ->
               fun u -> let uu___ = free_univs u in op_Plus_Plus out uu___) f
            us
      | FStar_Syntax_Syntax.Tm_abs
          { FStar_Syntax_Syntax.bs = bs; FStar_Syntax_Syntax.body = t1;
            FStar_Syntax_Syntax.rc_opt = ropt;_}
          ->
          let uu___ =
            let uu___1 = free_names_and_uvars t1 use_cache in
            aux_binders bs uu___1 in
          let uu___1 =
            match ropt with
            | FStar_Pervasives_Native.Some
                { FStar_Syntax_Syntax.residual_effect = uu___2;
                  FStar_Syntax_Syntax.residual_typ =
                    FStar_Pervasives_Native.Some t2;
                  FStar_Syntax_Syntax.residual_flags = uu___3;_}
                -> free_names_and_uvars t2 use_cache
            | uu___2 -> no_free_vars in
          op_Plus_Plus uu___ uu___1
      | FStar_Syntax_Syntax.Tm_arrow
          { FStar_Syntax_Syntax.bs1 = bs; FStar_Syntax_Syntax.comp = c;_} ->
          let uu___ = free_names_and_uvars_comp c use_cache in
          aux_binders bs uu___
      | FStar_Syntax_Syntax.Tm_refine
          { FStar_Syntax_Syntax.b = bv; FStar_Syntax_Syntax.phi = t1;_} ->
          let uu___ =
            let uu___1 = FStar_Syntax_Syntax.mk_binder bv in [uu___1] in
          let uu___1 = free_names_and_uvars t1 use_cache in
          aux_binders uu___ uu___1
      | FStar_Syntax_Syntax.Tm_app
          { FStar_Syntax_Syntax.hd = t1; FStar_Syntax_Syntax.args = args;_}
          ->
          let uu___ = free_names_and_uvars t1 use_cache in
          free_names_and_uvars_args args uu___ use_cache
      | FStar_Syntax_Syntax.Tm_match
          { FStar_Syntax_Syntax.scrutinee = t1;
            FStar_Syntax_Syntax.ret_opt = asc_opt;
            FStar_Syntax_Syntax.brs = pats;
            FStar_Syntax_Syntax.rc_opt1 = rc_opt;_}
          ->
          let uu___ =
            match rc_opt with
            | FStar_Pervasives_Native.Some
                { FStar_Syntax_Syntax.residual_effect = uu___1;
                  FStar_Syntax_Syntax.residual_typ =
                    FStar_Pervasives_Native.Some t2;
                  FStar_Syntax_Syntax.residual_flags = uu___2;_}
                -> free_names_and_uvars t2 use_cache
            | FStar_Pervasives_Native.None -> no_free_vars in
          let uu___1 =
            let uu___2 =
              let uu___3 = free_names_and_uvars t1 use_cache in
              let uu___4 =
                match asc_opt with
                | FStar_Pervasives_Native.None -> no_free_vars
                | FStar_Pervasives_Native.Some (b, asc) ->
                    let uu___5 = free_names_and_uvars_binders [b] use_cache in
                    let uu___6 =
                      free_names_and_uvars_ascription asc use_cache in
                    op_Plus_Plus uu___5 uu___6 in
              op_Plus_Plus uu___3 uu___4 in
            FStar_Compiler_List.fold_left
              (fun n ->
                 fun uu___3 ->
                   match uu___3 with
                   | (p, wopt, t2) ->
                       let n1 =
                         match wopt with
                         | FStar_Pervasives_Native.None -> no_free_vars
                         | FStar_Pervasives_Native.Some w ->
                             free_names_and_uvars w use_cache in
                       let n2 = free_names_and_uvars t2 use_cache in
                       let n3 =
                         let uu___4 = FStar_Syntax_Syntax.pat_bvs p in
                         FStar_Compiler_List.fold_left
                           (fun n4 ->
                              fun x ->
                                let uu___5 =
                                  free_names_and_uvars
                                    x.FStar_Syntax_Syntax.sort use_cache in
                                op_Plus_Plus n4 uu___5) n uu___4 in
                       let uu___4 = op_Plus_Plus n3 n1 in
                       op_Plus_Plus uu___4 n2) uu___2 pats in
          op_Plus_Plus uu___ uu___1
      | FStar_Syntax_Syntax.Tm_ascribed
          { FStar_Syntax_Syntax.tm = t1; FStar_Syntax_Syntax.asc = asc;
            FStar_Syntax_Syntax.eff_opt = uu___;_}
          ->
          let uu___1 = free_names_and_uvars t1 use_cache in
          let uu___2 = free_names_and_uvars_ascription asc use_cache in
          op_Plus_Plus uu___1 uu___2
      | FStar_Syntax_Syntax.Tm_let
          { FStar_Syntax_Syntax.lbs = lbs; FStar_Syntax_Syntax.body1 = t1;_}
          ->
          let uu___ = free_names_and_uvars t1 use_cache in
          FStar_Compiler_List.fold_left
            (fun n ->
               fun lb ->
                 let uu___1 =
                   let uu___2 =
                     free_names_and_uvars lb.FStar_Syntax_Syntax.lbtyp
                       use_cache in
                   op_Plus_Plus n uu___2 in
                 let uu___2 =
                   free_names_and_uvars lb.FStar_Syntax_Syntax.lbdef
                     use_cache in
                 op_Plus_Plus uu___1 uu___2) uu___
            (FStar_Pervasives_Native.snd lbs)
      | FStar_Syntax_Syntax.Tm_quoted (tm1, qi) ->
          (match qi.FStar_Syntax_Syntax.qkind with
           | FStar_Syntax_Syntax.Quote_static ->
               FStar_Compiler_List.fold_left
                 (fun n ->
                    fun t1 ->
                      let uu___ = free_names_and_uvars t1 use_cache in
                      op_Plus_Plus n uu___) no_free_vars
                 (FStar_Pervasives_Native.snd
                    qi.FStar_Syntax_Syntax.antiquotations)
           | FStar_Syntax_Syntax.Quote_dynamic ->
               free_names_and_uvars tm1 use_cache)
      | FStar_Syntax_Syntax.Tm_meta
          { FStar_Syntax_Syntax.tm2 = t1; FStar_Syntax_Syntax.meta = m;_} ->
          let u1 = free_names_and_uvars t1 use_cache in
          (match m with
           | FStar_Syntax_Syntax.Meta_pattern (uu___, args) ->
               FStar_Compiler_List.fold_right
                 (fun a ->
                    fun acc -> free_names_and_uvars_args a acc use_cache)
                 args u1
           | FStar_Syntax_Syntax.Meta_monadic (uu___, t') ->
               let uu___1 = free_names_and_uvars t' use_cache in
               op_Plus_Plus u1 uu___1
           | FStar_Syntax_Syntax.Meta_monadic_lift (uu___, uu___1, t') ->
               let uu___2 = free_names_and_uvars t' use_cache in
               op_Plus_Plus u1 uu___2
           | FStar_Syntax_Syntax.Meta_labeled uu___ -> u1
           | FStar_Syntax_Syntax.Meta_desugared uu___ -> u1
           | FStar_Syntax_Syntax.Meta_named uu___ -> u1)
and (free_names_and_uvars_binders :
  FStar_Syntax_Syntax.binders -> use_cache_t -> free_vars_and_fvars) =
  fun bs ->
    fun use_cache ->
      FStar_Compiler_List.fold_left
        (fun n ->
           fun b ->
             let uu___ =
               free_names_and_uvars
                 (b.FStar_Syntax_Syntax.binder_bv).FStar_Syntax_Syntax.sort
                 use_cache in
             op_Plus_Plus n uu___) no_free_vars bs
and (free_names_and_uvars_ascription :
  ((FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,
    FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax)
    FStar_Pervasives.either * FStar_Syntax_Syntax.term'
    FStar_Syntax_Syntax.syntax FStar_Pervasives_Native.option * Prims.bool)
    -> use_cache_t -> free_vars_and_fvars)
  =
  fun asc ->
    fun use_cache ->
      let uu___ = asc in
      match uu___ with
      | (asc1, tacopt, uu___1) ->
          let uu___2 =
            match asc1 with
            | FStar_Pervasives.Inl t -> free_names_and_uvars t use_cache
            | FStar_Pervasives.Inr c -> free_names_and_uvars_comp c use_cache in
          let uu___3 =
            match tacopt with
            | FStar_Pervasives_Native.None -> no_free_vars
            | FStar_Pervasives_Native.Some tac ->
                free_names_and_uvars tac use_cache in
          op_Plus_Plus uu___2 uu___3
and (free_names_and_uvars :
  FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
    use_cache_t -> free_vars_and_fvars)
  =
  fun t ->
    fun use_cache ->
      let t1 = FStar_Syntax_Subst.compress t in
      let uu___ = FStar_Compiler_Effect.op_Bang t1.FStar_Syntax_Syntax.vars in
      match uu___ with
      | FStar_Pervasives_Native.Some n when
          let uu___1 = should_invalidate_cache n use_cache in
          Prims.op_Negation uu___1 ->
          let uu___1 =
            Obj.magic
              (FStar_Class_Setlike.empty ()
                 (Obj.magic
                    (FStar_Compiler_RBSet.setlike_rbset
                       FStar_Syntax_Syntax.ord_fv)) ()) in
          (n, uu___1)
      | uu___1 ->
          (FStar_Compiler_Effect.op_Colon_Equals t1.FStar_Syntax_Syntax.vars
             FStar_Pervasives_Native.None;
           (let n = free_names_and_uvs' t1 use_cache in
            if use_cache <> Full
            then
              FStar_Compiler_Effect.op_Colon_Equals
                t1.FStar_Syntax_Syntax.vars
                (FStar_Pervasives_Native.Some (FStar_Pervasives_Native.fst n))
            else ();
            n))
and (free_names_and_uvars_args :
  (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax *
    FStar_Syntax_Syntax.arg_qualifier FStar_Pervasives_Native.option)
    Prims.list -> free_vars_and_fvars -> use_cache_t -> free_vars_and_fvars)
  =
  fun args ->
    fun acc ->
      fun use_cache ->
        FStar_Compiler_List.fold_left
          (fun n ->
             fun uu___ ->
               match uu___ with
               | (x, uu___1) ->
                   let uu___2 = free_names_and_uvars x use_cache in
                   op_Plus_Plus n uu___2) acc args
and (free_names_and_uvars_comp :
  FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax ->
    use_cache_t -> free_vars_and_fvars)
  =
  fun c ->
    fun use_cache ->
      let uu___ = FStar_Compiler_Effect.op_Bang c.FStar_Syntax_Syntax.vars in
      match uu___ with
      | FStar_Pervasives_Native.Some n ->
          let uu___1 = should_invalidate_cache n use_cache in
          if uu___1
          then
            (FStar_Compiler_Effect.op_Colon_Equals c.FStar_Syntax_Syntax.vars
               FStar_Pervasives_Native.None;
             free_names_and_uvars_comp c use_cache)
          else
            (let uu___3 =
               Obj.magic
                 (FStar_Class_Setlike.empty ()
                    (Obj.magic
                       (FStar_Compiler_RBSet.setlike_rbset
                          FStar_Syntax_Syntax.ord_fv)) ()) in
             (n, uu___3))
      | uu___1 ->
          let n =
            match c.FStar_Syntax_Syntax.n with
            | FStar_Syntax_Syntax.GTotal t ->
                free_names_and_uvars t use_cache
            | FStar_Syntax_Syntax.Total t -> free_names_and_uvars t use_cache
            | FStar_Syntax_Syntax.Comp ct ->
                let decreases_vars =
                  let uu___2 =
                    FStar_Compiler_List.tryFind
                      (fun uu___3 ->
                         match uu___3 with
                         | FStar_Syntax_Syntax.DECREASES uu___4 -> true
                         | uu___4 -> false) ct.FStar_Syntax_Syntax.flags in
                  match uu___2 with
                  | FStar_Pervasives_Native.None -> no_free_vars
                  | FStar_Pervasives_Native.Some
                      (FStar_Syntax_Syntax.DECREASES dec_order) ->
                      free_names_and_uvars_dec_order dec_order use_cache in
                let us =
                  let uu___2 =
                    free_names_and_uvars ct.FStar_Syntax_Syntax.result_typ
                      use_cache in
                  op_Plus_Plus uu___2 decreases_vars in
                let us1 =
                  free_names_and_uvars_args
                    ct.FStar_Syntax_Syntax.effect_args us use_cache in
                FStar_Compiler_List.fold_left
                  (fun us2 ->
                     fun u ->
                       let uu___2 = free_univs u in op_Plus_Plus us2 uu___2)
                  us1 ct.FStar_Syntax_Syntax.comp_univs in
          (FStar_Compiler_Effect.op_Colon_Equals c.FStar_Syntax_Syntax.vars
             (FStar_Pervasives_Native.Some (FStar_Pervasives_Native.fst n));
           n)
and (free_names_and_uvars_dec_order :
  FStar_Syntax_Syntax.decreases_order -> use_cache_t -> free_vars_and_fvars)
  =
  fun dec_order ->
    fun use_cache ->
      match dec_order with
      | FStar_Syntax_Syntax.Decreases_lex l ->
          FStar_Compiler_List.fold_left
            (fun acc ->
               fun t ->
                 let uu___ = free_names_and_uvars t use_cache in
                 op_Plus_Plus acc uu___) no_free_vars l
      | FStar_Syntax_Syntax.Decreases_wf (rel, e) ->
          let uu___ = free_names_and_uvars rel use_cache in
          let uu___1 = free_names_and_uvars e use_cache in
          op_Plus_Plus uu___ uu___1
and (should_invalidate_cache :
  FStar_Syntax_Syntax.free_vars -> use_cache_t -> Prims.bool) =
  fun n ->
    fun use_cache ->
      ((use_cache <> Def) ||
         (FStar_Class_Setlike.for_any ()
            (Obj.magic (FStar_Compiler_FlatSet.setlike_flat_set ord_ctx_uvar))
            (fun u ->
               let uu___ =
                 FStar_Syntax_Unionfind.find
                   u.FStar_Syntax_Syntax.ctx_uvar_head in
               match uu___ with
               | FStar_Pervasives_Native.Some uu___1 -> true
               | uu___1 -> false)
            (Obj.magic n.FStar_Syntax_Syntax.free_uvars)))
        ||
        (FStar_Class_Setlike.for_any ()
           (Obj.magic (FStar_Compiler_FlatSet.setlike_flat_set ord_univ_uvar))
           (fun u ->
              let uu___ = FStar_Syntax_Unionfind.univ_find u in
              match uu___ with
              | FStar_Pervasives_Native.Some uu___1 -> true
              | FStar_Pervasives_Native.None -> false)
           (Obj.magic n.FStar_Syntax_Syntax.free_univs))
let (names :
  FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.bv FStar_Compiler_FlatSet.t)
  =
  fun t ->
    let uu___ =
      let uu___1 = free_names_and_uvars t Def in
      FStar_Pervasives_Native.fst uu___1 in
    uu___.FStar_Syntax_Syntax.free_names
let (uvars :
  FStar_Syntax_Syntax.term ->
    FStar_Syntax_Syntax.ctx_uvar FStar_Compiler_FlatSet.t)
  =
  fun t ->
    let uu___ =
      let uu___1 = free_names_and_uvars t Def in
      FStar_Pervasives_Native.fst uu___1 in
    uu___.FStar_Syntax_Syntax.free_uvars
let (univs :
  FStar_Syntax_Syntax.term ->
    FStar_Syntax_Syntax.universe_uvar FStar_Compiler_FlatSet.t)
  =
  fun t ->
    let uu___ =
      let uu___1 = free_names_and_uvars t Def in
      FStar_Pervasives_Native.fst uu___1 in
    uu___.FStar_Syntax_Syntax.free_univs
let (univnames :
  FStar_Syntax_Syntax.term ->
    FStar_Syntax_Syntax.univ_name FStar_Compiler_FlatSet.t)
  =
  fun t ->
    let uu___ =
      let uu___1 = free_names_and_uvars t Def in
      FStar_Pervasives_Native.fst uu___1 in
    uu___.FStar_Syntax_Syntax.free_univ_names
let (univnames_comp :
  FStar_Syntax_Syntax.comp ->
    FStar_Syntax_Syntax.univ_name FStar_Compiler_FlatSet.t)
  =
  fun c ->
    let uu___ =
      let uu___1 = free_names_and_uvars_comp c Def in
      FStar_Pervasives_Native.fst uu___1 in
    uu___.FStar_Syntax_Syntax.free_univ_names
let (fvars :
  FStar_Syntax_Syntax.term -> FStar_Ident.lident FStar_Compiler_RBSet.t) =
  fun t ->
    let uu___ = free_names_and_uvars t NoCache in
    FStar_Pervasives_Native.snd uu___
let (names_of_binders :
  FStar_Syntax_Syntax.binders ->
    FStar_Syntax_Syntax.bv FStar_Compiler_FlatSet.t)
  =
  fun bs ->
    let uu___ =
      let uu___1 = free_names_and_uvars_binders bs Def in
      FStar_Pervasives_Native.fst uu___1 in
    uu___.FStar_Syntax_Syntax.free_names
let (uvars_uncached :
  FStar_Syntax_Syntax.term ->
    FStar_Syntax_Syntax.ctx_uvar FStar_Compiler_FlatSet.t)
  =
  fun t ->
    let uu___ =
      let uu___1 = free_names_and_uvars t NoCache in
      FStar_Pervasives_Native.fst uu___1 in
    uu___.FStar_Syntax_Syntax.free_uvars
let (uvars_full :
  FStar_Syntax_Syntax.term ->
    FStar_Syntax_Syntax.ctx_uvar FStar_Compiler_FlatSet.t)
  =
  fun t ->
    let uu___ =
      let uu___1 = free_names_and_uvars t Full in
      FStar_Pervasives_Native.fst uu___1 in
    uu___.FStar_Syntax_Syntax.free_uvars
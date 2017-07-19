open Prims
type local_binding =
  (FStar_Ident.ident,FStar_Syntax_Syntax.bv,Prims.bool)
    FStar_Pervasives_Native.tuple3
type rec_binding =
  (FStar_Ident.ident,FStar_Ident.lid,FStar_Syntax_Syntax.delta_depth)
    FStar_Pervasives_Native.tuple3
type module_abbrev =
  (FStar_Ident.ident,FStar_Ident.lident) FStar_Pervasives_Native.tuple2
type open_kind =
  | Open_module
  | Open_namespace
let uu___is_Open_module: open_kind -> Prims.bool =
  fun projectee  ->
    match projectee with | Open_module  -> true | uu____21 -> false
let uu___is_Open_namespace: open_kind -> Prims.bool =
  fun projectee  ->
    match projectee with | Open_namespace  -> true | uu____26 -> false
type open_module_or_namespace =
  (FStar_Ident.lident,open_kind) FStar_Pervasives_Native.tuple2
type record_or_dc =
  {
  typename: FStar_Ident.lident;
  constrname: FStar_Ident.ident;
  parms: FStar_Syntax_Syntax.binders;
  fields:
    (FStar_Ident.ident,FStar_Syntax_Syntax.typ)
      FStar_Pervasives_Native.tuple2 Prims.list;
  is_private_or_abstract: Prims.bool;
  is_record: Prims.bool;}
let __proj__Mkrecord_or_dc__item__typename:
  record_or_dc -> FStar_Ident.lident =
  fun projectee  ->
    match projectee with
    | { typename = __fname__typename; constrname = __fname__constrname;
        parms = __fname__parms; fields = __fname__fields;
        is_private_or_abstract = __fname__is_private_or_abstract;
        is_record = __fname__is_record;_} -> __fname__typename
let __proj__Mkrecord_or_dc__item__constrname:
  record_or_dc -> FStar_Ident.ident =
  fun projectee  ->
    match projectee with
    | { typename = __fname__typename; constrname = __fname__constrname;
        parms = __fname__parms; fields = __fname__fields;
        is_private_or_abstract = __fname__is_private_or_abstract;
        is_record = __fname__is_record;_} -> __fname__constrname
let __proj__Mkrecord_or_dc__item__parms:
  record_or_dc -> FStar_Syntax_Syntax.binders =
  fun projectee  ->
    match projectee with
    | { typename = __fname__typename; constrname = __fname__constrname;
        parms = __fname__parms; fields = __fname__fields;
        is_private_or_abstract = __fname__is_private_or_abstract;
        is_record = __fname__is_record;_} -> __fname__parms
let __proj__Mkrecord_or_dc__item__fields:
  record_or_dc ->
    (FStar_Ident.ident,FStar_Syntax_Syntax.typ)
      FStar_Pervasives_Native.tuple2 Prims.list
  =
  fun projectee  ->
    match projectee with
    | { typename = __fname__typename; constrname = __fname__constrname;
        parms = __fname__parms; fields = __fname__fields;
        is_private_or_abstract = __fname__is_private_or_abstract;
        is_record = __fname__is_record;_} -> __fname__fields
let __proj__Mkrecord_or_dc__item__is_private_or_abstract:
  record_or_dc -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { typename = __fname__typename; constrname = __fname__constrname;
        parms = __fname__parms; fields = __fname__fields;
        is_private_or_abstract = __fname__is_private_or_abstract;
        is_record = __fname__is_record;_} -> __fname__is_private_or_abstract
let __proj__Mkrecord_or_dc__item__is_record: record_or_dc -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { typename = __fname__typename; constrname = __fname__constrname;
        parms = __fname__parms; fields = __fname__fields;
        is_private_or_abstract = __fname__is_private_or_abstract;
        is_record = __fname__is_record;_} -> __fname__is_record
type scope_mod =
  | Local_binding of local_binding
  | Rec_binding of rec_binding
  | Module_abbrev of module_abbrev
  | Open_module_or_namespace of open_module_or_namespace
  | Top_level_def of FStar_Ident.ident
  | Record_or_dc of record_or_dc
let uu___is_Local_binding: scope_mod -> Prims.bool =
  fun projectee  ->
    match projectee with | Local_binding _0 -> true | uu____198 -> false
let __proj__Local_binding__item___0: scope_mod -> local_binding =
  fun projectee  -> match projectee with | Local_binding _0 -> _0
let uu___is_Rec_binding: scope_mod -> Prims.bool =
  fun projectee  ->
    match projectee with | Rec_binding _0 -> true | uu____212 -> false
let __proj__Rec_binding__item___0: scope_mod -> rec_binding =
  fun projectee  -> match projectee with | Rec_binding _0 -> _0
let uu___is_Module_abbrev: scope_mod -> Prims.bool =
  fun projectee  ->
    match projectee with | Module_abbrev _0 -> true | uu____226 -> false
let __proj__Module_abbrev__item___0: scope_mod -> module_abbrev =
  fun projectee  -> match projectee with | Module_abbrev _0 -> _0
let uu___is_Open_module_or_namespace: scope_mod -> Prims.bool =
  fun projectee  ->
    match projectee with
    | Open_module_or_namespace _0 -> true
    | uu____240 -> false
let __proj__Open_module_or_namespace__item___0:
  scope_mod -> open_module_or_namespace =
  fun projectee  -> match projectee with | Open_module_or_namespace _0 -> _0
let uu___is_Top_level_def: scope_mod -> Prims.bool =
  fun projectee  ->
    match projectee with | Top_level_def _0 -> true | uu____254 -> false
let __proj__Top_level_def__item___0: scope_mod -> FStar_Ident.ident =
  fun projectee  -> match projectee with | Top_level_def _0 -> _0
let uu___is_Record_or_dc: scope_mod -> Prims.bool =
  fun projectee  ->
    match projectee with | Record_or_dc _0 -> true | uu____268 -> false
let __proj__Record_or_dc__item___0: scope_mod -> record_or_dc =
  fun projectee  -> match projectee with | Record_or_dc _0 -> _0
type string_set = Prims.string FStar_Util.set
type exported_id_kind =
  | Exported_id_term_type
  | Exported_id_field
let uu___is_Exported_id_term_type: exported_id_kind -> Prims.bool =
  fun projectee  ->
    match projectee with
    | Exported_id_term_type  -> true
    | uu____283 -> false
let uu___is_Exported_id_field: exported_id_kind -> Prims.bool =
  fun projectee  ->
    match projectee with | Exported_id_field  -> true | uu____288 -> false
type exported_id_set = exported_id_kind -> string_set FStar_ST.ref
type env =
  {
  curmodule: FStar_Ident.lident FStar_Pervasives_Native.option;
  curmonad: FStar_Ident.ident FStar_Pervasives_Native.option;
  modules:
    (FStar_Ident.lident,FStar_Syntax_Syntax.modul)
      FStar_Pervasives_Native.tuple2 Prims.list;
  scope_mods: scope_mod Prims.list;
  exported_ids: exported_id_set FStar_Util.smap;
  trans_exported_ids: exported_id_set FStar_Util.smap;
  includes: FStar_Ident.lident Prims.list FStar_ST.ref FStar_Util.smap;
  sigaccum: FStar_Syntax_Syntax.sigelts;
  sigmap:
    (FStar_Syntax_Syntax.sigelt,Prims.bool) FStar_Pervasives_Native.tuple2
      FStar_Util.smap;
  iface: Prims.bool;
  admitted_iface: Prims.bool;
  expect_typ: Prims.bool;
  docs: FStar_Parser_AST.fsdoc FStar_Util.smap;
  remaining_iface_decls:
    (FStar_Ident.lident,FStar_Parser_AST.decl Prims.list)
      FStar_Pervasives_Native.tuple2 Prims.list;
  syntax_only: Prims.bool;}
let __proj__Mkenv__item__curmodule:
  env -> FStar_Ident.lident FStar_Pervasives_Native.option =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__curmodule
let __proj__Mkenv__item__curmonad:
  env -> FStar_Ident.ident FStar_Pervasives_Native.option =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__curmonad
let __proj__Mkenv__item__modules:
  env ->
    (FStar_Ident.lident,FStar_Syntax_Syntax.modul)
      FStar_Pervasives_Native.tuple2 Prims.list
  =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__modules
let __proj__Mkenv__item__scope_mods: env -> scope_mod Prims.list =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__scope_mods
let __proj__Mkenv__item__exported_ids: env -> exported_id_set FStar_Util.smap
  =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__exported_ids
let __proj__Mkenv__item__trans_exported_ids:
  env -> exported_id_set FStar_Util.smap =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__trans_exported_ids
let __proj__Mkenv__item__includes:
  env -> FStar_Ident.lident Prims.list FStar_ST.ref FStar_Util.smap =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__includes
let __proj__Mkenv__item__sigaccum: env -> FStar_Syntax_Syntax.sigelts =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__sigaccum
let __proj__Mkenv__item__sigmap:
  env ->
    (FStar_Syntax_Syntax.sigelt,Prims.bool) FStar_Pervasives_Native.tuple2
      FStar_Util.smap
  =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__sigmap
let __proj__Mkenv__item__iface: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__iface
let __proj__Mkenv__item__admitted_iface: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__admitted_iface
let __proj__Mkenv__item__expect_typ: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__expect_typ
let __proj__Mkenv__item__docs: env -> FStar_Parser_AST.fsdoc FStar_Util.smap
  =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__docs
let __proj__Mkenv__item__remaining_iface_decls:
  env ->
    (FStar_Ident.lident,FStar_Parser_AST.decl Prims.list)
      FStar_Pervasives_Native.tuple2 Prims.list
  =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} ->
        __fname__remaining_iface_decls
let __proj__Mkenv__item__syntax_only: env -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { curmodule = __fname__curmodule; curmonad = __fname__curmonad;
        modules = __fname__modules; scope_mods = __fname__scope_mods;
        exported_ids = __fname__exported_ids;
        trans_exported_ids = __fname__trans_exported_ids;
        includes = __fname__includes; sigaccum = __fname__sigaccum;
        sigmap = __fname__sigmap; iface = __fname__iface;
        admitted_iface = __fname__admitted_iface;
        expect_typ = __fname__expect_typ; docs = __fname__docs;
        remaining_iface_decls = __fname__remaining_iface_decls;
        syntax_only = __fname__syntax_only;_} -> __fname__syntax_only
type foundname =
  | Term_name of (FStar_Syntax_Syntax.typ,Prims.bool)
  FStar_Pervasives_Native.tuple2
  | Eff_name of (FStar_Syntax_Syntax.sigelt,FStar_Ident.lident)
  FStar_Pervasives_Native.tuple2
let uu___is_Term_name: foundname -> Prims.bool =
  fun projectee  ->
    match projectee with | Term_name _0 -> true | uu____1349 -> false
let __proj__Term_name__item___0:
  foundname ->
    (FStar_Syntax_Syntax.typ,Prims.bool) FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Term_name _0 -> _0
let uu___is_Eff_name: foundname -> Prims.bool =
  fun projectee  ->
    match projectee with | Eff_name _0 -> true | uu____1379 -> false
let __proj__Eff_name__item___0:
  foundname ->
    (FStar_Syntax_Syntax.sigelt,FStar_Ident.lident)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Eff_name _0 -> _0
let set_iface: env -> Prims.bool -> env =
  fun env  ->
    fun b  ->
      let uu___176_1408 = env in
      {
        curmodule = (uu___176_1408.curmodule);
        curmonad = (uu___176_1408.curmonad);
        modules = (uu___176_1408.modules);
        scope_mods = (uu___176_1408.scope_mods);
        exported_ids = (uu___176_1408.exported_ids);
        trans_exported_ids = (uu___176_1408.trans_exported_ids);
        includes = (uu___176_1408.includes);
        sigaccum = (uu___176_1408.sigaccum);
        sigmap = (uu___176_1408.sigmap);
        iface = b;
        admitted_iface = (uu___176_1408.admitted_iface);
        expect_typ = (uu___176_1408.expect_typ);
        docs = (uu___176_1408.docs);
        remaining_iface_decls = (uu___176_1408.remaining_iface_decls);
        syntax_only = (uu___176_1408.syntax_only)
      }
let iface: env -> Prims.bool = fun e  -> e.iface
let set_admitted_iface: env -> Prims.bool -> env =
  fun e  ->
    fun b  ->
      let uu___177_1421 = e in
      {
        curmodule = (uu___177_1421.curmodule);
        curmonad = (uu___177_1421.curmonad);
        modules = (uu___177_1421.modules);
        scope_mods = (uu___177_1421.scope_mods);
        exported_ids = (uu___177_1421.exported_ids);
        trans_exported_ids = (uu___177_1421.trans_exported_ids);
        includes = (uu___177_1421.includes);
        sigaccum = (uu___177_1421.sigaccum);
        sigmap = (uu___177_1421.sigmap);
        iface = (uu___177_1421.iface);
        admitted_iface = b;
        expect_typ = (uu___177_1421.expect_typ);
        docs = (uu___177_1421.docs);
        remaining_iface_decls = (uu___177_1421.remaining_iface_decls);
        syntax_only = (uu___177_1421.syntax_only)
      }
let admitted_iface: env -> Prims.bool = fun e  -> e.admitted_iface
let set_expect_typ: env -> Prims.bool -> env =
  fun e  ->
    fun b  ->
      let uu___178_1434 = e in
      {
        curmodule = (uu___178_1434.curmodule);
        curmonad = (uu___178_1434.curmonad);
        modules = (uu___178_1434.modules);
        scope_mods = (uu___178_1434.scope_mods);
        exported_ids = (uu___178_1434.exported_ids);
        trans_exported_ids = (uu___178_1434.trans_exported_ids);
        includes = (uu___178_1434.includes);
        sigaccum = (uu___178_1434.sigaccum);
        sigmap = (uu___178_1434.sigmap);
        iface = (uu___178_1434.iface);
        admitted_iface = (uu___178_1434.admitted_iface);
        expect_typ = b;
        docs = (uu___178_1434.docs);
        remaining_iface_decls = (uu___178_1434.remaining_iface_decls);
        syntax_only = (uu___178_1434.syntax_only)
      }
let expect_typ: env -> Prims.bool = fun e  -> e.expect_typ
let all_exported_id_kinds: exported_id_kind Prims.list =
  [Exported_id_field; Exported_id_term_type]
let transitive_exported_ids:
  env -> FStar_Ident.lident -> Prims.string Prims.list =
  fun env  ->
    fun lid  ->
      let module_name = FStar_Ident.string_of_lid lid in
      let uu____1452 =
        FStar_Util.smap_try_find env.trans_exported_ids module_name in
      match uu____1452 with
      | FStar_Pervasives_Native.None  -> []
      | FStar_Pervasives_Native.Some exported_id_set ->
          let uu____1458 =
            let uu____1459 = exported_id_set Exported_id_term_type in
            FStar_ST.read uu____1459 in
          FStar_All.pipe_right uu____1458 FStar_Util.set_elements
let open_modules:
  env ->
    (FStar_Ident.lident,FStar_Syntax_Syntax.modul)
      FStar_Pervasives_Native.tuple2 Prims.list
  = fun e  -> e.modules
let set_current_module: env -> FStar_Ident.lident -> env =
  fun e  ->
    fun l  ->
      let uu___179_1485 = e in
      {
        curmodule = (FStar_Pervasives_Native.Some l);
        curmonad = (uu___179_1485.curmonad);
        modules = (uu___179_1485.modules);
        scope_mods = (uu___179_1485.scope_mods);
        exported_ids = (uu___179_1485.exported_ids);
        trans_exported_ids = (uu___179_1485.trans_exported_ids);
        includes = (uu___179_1485.includes);
        sigaccum = (uu___179_1485.sigaccum);
        sigmap = (uu___179_1485.sigmap);
        iface = (uu___179_1485.iface);
        admitted_iface = (uu___179_1485.admitted_iface);
        expect_typ = (uu___179_1485.expect_typ);
        docs = (uu___179_1485.docs);
        remaining_iface_decls = (uu___179_1485.remaining_iface_decls);
        syntax_only = (uu___179_1485.syntax_only)
      }
let current_module: env -> FStar_Ident.lident =
  fun env  ->
    match env.curmodule with
    | FStar_Pervasives_Native.None  -> failwith "Unset current module"
    | FStar_Pervasives_Native.Some m -> m
let iface_decls:
  env ->
    FStar_Ident.lident ->
      FStar_Parser_AST.decl Prims.list FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      let uu____1503 =
        FStar_All.pipe_right env.remaining_iface_decls
          (FStar_List.tryFind
             (fun uu____1537  ->
                match uu____1537 with
                | (m,uu____1545) -> FStar_Ident.lid_equals l m)) in
      match uu____1503 with
      | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
      | FStar_Pervasives_Native.Some (uu____1562,decls) ->
          FStar_Pervasives_Native.Some decls
let set_iface_decls:
  env -> FStar_Ident.lident -> FStar_Parser_AST.decl Prims.list -> env =
  fun env  ->
    fun l  ->
      fun ds  ->
        let uu____1592 =
          FStar_List.partition
            (fun uu____1622  ->
               match uu____1622 with
               | (m,uu____1630) -> FStar_Ident.lid_equals l m)
            env.remaining_iface_decls in
        match uu____1592 with
        | (uu____1635,rest) ->
            let uu___180_1669 = env in
            {
              curmodule = (uu___180_1669.curmodule);
              curmonad = (uu___180_1669.curmonad);
              modules = (uu___180_1669.modules);
              scope_mods = (uu___180_1669.scope_mods);
              exported_ids = (uu___180_1669.exported_ids);
              trans_exported_ids = (uu___180_1669.trans_exported_ids);
              includes = (uu___180_1669.includes);
              sigaccum = (uu___180_1669.sigaccum);
              sigmap = (uu___180_1669.sigmap);
              iface = (uu___180_1669.iface);
              admitted_iface = (uu___180_1669.admitted_iface);
              expect_typ = (uu___180_1669.expect_typ);
              docs = (uu___180_1669.docs);
              remaining_iface_decls = ((l, ds) :: rest);
              syntax_only = (uu___180_1669.syntax_only)
            }
let qual: FStar_Ident.lident -> FStar_Ident.ident -> FStar_Ident.lident =
  FStar_Syntax_Util.qual_id
let qualify: env -> FStar_Ident.ident -> FStar_Ident.lident =
  fun env  ->
    fun id  ->
      match env.curmonad with
      | FStar_Pervasives_Native.None  ->
          let uu____1692 = current_module env in qual uu____1692 id
      | FStar_Pervasives_Native.Some monad ->
          let uu____1694 =
            let uu____1695 = current_module env in qual uu____1695 monad in
          FStar_Syntax_Util.mk_field_projector_name_from_ident uu____1694 id
let syntax_only: env -> Prims.bool = fun env  -> env.syntax_only
let set_syntax_only: env -> Prims.bool -> env =
  fun env  ->
    fun b  ->
      let uu___181_1708 = env in
      {
        curmodule = (uu___181_1708.curmodule);
        curmonad = (uu___181_1708.curmonad);
        modules = (uu___181_1708.modules);
        scope_mods = (uu___181_1708.scope_mods);
        exported_ids = (uu___181_1708.exported_ids);
        trans_exported_ids = (uu___181_1708.trans_exported_ids);
        includes = (uu___181_1708.includes);
        sigaccum = (uu___181_1708.sigaccum);
        sigmap = (uu___181_1708.sigmap);
        iface = (uu___181_1708.iface);
        admitted_iface = (uu___181_1708.admitted_iface);
        expect_typ = (uu___181_1708.expect_typ);
        docs = (uu___181_1708.docs);
        remaining_iface_decls = (uu___181_1708.remaining_iface_decls);
        syntax_only = b
      }
let new_sigmap: 'Auu____1713 . Prims.unit -> 'Auu____1713 FStar_Util.smap =
  fun uu____1719  -> FStar_Util.smap_create (Prims.parse_int "100")
let empty_env: Prims.unit -> env =
  fun uu____1723  ->
    let uu____1724 = new_sigmap () in
    let uu____1727 = new_sigmap () in
    let uu____1730 = new_sigmap () in
    let uu____1741 = new_sigmap () in
    let uu____1752 = new_sigmap () in
    {
      curmodule = FStar_Pervasives_Native.None;
      curmonad = FStar_Pervasives_Native.None;
      modules = [];
      scope_mods = [];
      exported_ids = uu____1724;
      trans_exported_ids = uu____1727;
      includes = uu____1730;
      sigaccum = [];
      sigmap = uu____1741;
      iface = false;
      admitted_iface = false;
      expect_typ = false;
      docs = uu____1752;
      remaining_iface_decls = [];
      syntax_only = false
    }
let sigmap:
  env ->
    (FStar_Syntax_Syntax.sigelt,Prims.bool) FStar_Pervasives_Native.tuple2
      FStar_Util.smap
  = fun env  -> env.sigmap
let has_all_in_scope: env -> Prims.bool =
  fun env  ->
    FStar_List.existsb
      (fun uu____1786  ->
         match uu____1786 with
         | (m,uu____1792) ->
             FStar_Ident.lid_equals m FStar_Parser_Const.all_lid) env.modules
let set_bv_range:
  FStar_Syntax_Syntax.bv -> FStar_Range.range -> FStar_Syntax_Syntax.bv =
  fun bv  ->
    fun r  ->
      let id =
        let uu___182_1802 = bv.FStar_Syntax_Syntax.ppname in
        {
          FStar_Ident.idText = (uu___182_1802.FStar_Ident.idText);
          FStar_Ident.idRange = r
        } in
      let uu___183_1803 = bv in
      {
        FStar_Syntax_Syntax.ppname = id;
        FStar_Syntax_Syntax.index = (uu___183_1803.FStar_Syntax_Syntax.index);
        FStar_Syntax_Syntax.sort = (uu___183_1803.FStar_Syntax_Syntax.sort)
      }
let bv_to_name:
  FStar_Syntax_Syntax.bv -> FStar_Range.range -> FStar_Syntax_Syntax.term =
  fun bv  -> fun r  -> FStar_Syntax_Syntax.bv_to_name (set_bv_range bv r)
let unmangleMap:
  (Prims.string,Prims.string,FStar_Syntax_Syntax.delta_depth,FStar_Syntax_Syntax.fv_qual
                                                               FStar_Pervasives_Native.option)
    FStar_Pervasives_Native.tuple4 Prims.list
  =
  [("op_ColonColon", "Cons", FStar_Syntax_Syntax.Delta_constant,
     (FStar_Pervasives_Native.Some FStar_Syntax_Syntax.Data_ctor));
  ("not", "op_Negation", FStar_Syntax_Syntax.Delta_equational,
    FStar_Pervasives_Native.None)]
let unmangleOpName:
  FStar_Ident.ident ->
    (FStar_Syntax_Syntax.term,Prims.bool) FStar_Pervasives_Native.tuple2
      FStar_Pervasives_Native.option
  =
  fun id  ->
    let t =
      FStar_Util.find_map unmangleMap
        (fun uu____1893  ->
           match uu____1893 with
           | (x,y,dd,dq) ->
               if id.FStar_Ident.idText = x
               then
                 let uu____1916 =
                   let uu____1917 =
                     FStar_Ident.lid_of_path ["Prims"; y]
                       id.FStar_Ident.idRange in
                   FStar_Syntax_Syntax.fvar uu____1917 dd dq in
                 FStar_Pervasives_Native.Some uu____1916
               else FStar_Pervasives_Native.None) in
    match t with
    | FStar_Pervasives_Native.Some v1 ->
        FStar_Pervasives_Native.Some (v1, false)
    | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
type 'a cont_t =
  | Cont_ok of 'a
  | Cont_fail
  | Cont_ignore
let uu___is_Cont_ok: 'a . 'a cont_t -> Prims.bool =
  fun projectee  ->
    match projectee with | Cont_ok _0 -> true | uu____1962 -> false
let __proj__Cont_ok__item___0: 'a . 'a cont_t -> 'a =
  fun projectee  -> match projectee with | Cont_ok _0 -> _0
let uu___is_Cont_fail: 'a . 'a cont_t -> Prims.bool =
  fun projectee  ->
    match projectee with | Cont_fail  -> true | uu____1995 -> false
let uu___is_Cont_ignore: 'a . 'a cont_t -> Prims.bool =
  fun projectee  ->
    match projectee with | Cont_ignore  -> true | uu____2011 -> false
let option_of_cont:
  'a .
    (Prims.unit -> 'a FStar_Pervasives_Native.option) ->
      'a cont_t -> 'a FStar_Pervasives_Native.option
  =
  fun k_ignore  ->
    fun uu___148_2037  ->
      match uu___148_2037 with
      | Cont_ok a -> FStar_Pervasives_Native.Some a
      | Cont_fail  -> FStar_Pervasives_Native.None
      | Cont_ignore  -> k_ignore ()
let find_in_record:
  'Auu____2055 .
    FStar_Ident.ident Prims.list ->
      FStar_Ident.ident ->
        record_or_dc ->
          (record_or_dc -> 'Auu____2055 cont_t) -> 'Auu____2055 cont_t
  =
  fun ns  ->
    fun id  ->
      fun record  ->
        fun cont  ->
          let typename' =
            FStar_Ident.lid_of_ids
              (FStar_List.append ns [(record.typename).FStar_Ident.ident]) in
          if FStar_Ident.lid_equals typename' record.typename
          then
            let fname =
              FStar_Ident.lid_of_ids
                (FStar_List.append (record.typename).FStar_Ident.ns [id]) in
            let find1 =
              FStar_Util.find_map record.fields
                (fun uu____2101  ->
                   match uu____2101 with
                   | (f,uu____2109) ->
                       if id.FStar_Ident.idText = f.FStar_Ident.idText
                       then FStar_Pervasives_Native.Some record
                       else FStar_Pervasives_Native.None) in
            match find1 with
            | FStar_Pervasives_Native.Some r -> cont r
            | FStar_Pervasives_Native.None  -> Cont_ignore
          else Cont_ignore
let get_exported_id_set:
  env ->
    Prims.string ->
      (exported_id_kind -> string_set FStar_ST.ref)
        FStar_Pervasives_Native.option
  = fun e  -> fun mname  -> FStar_Util.smap_try_find e.exported_ids mname
let get_trans_exported_id_set:
  env ->
    Prims.string ->
      (exported_id_kind -> string_set FStar_ST.ref)
        FStar_Pervasives_Native.option
  =
  fun e  -> fun mname  -> FStar_Util.smap_try_find e.trans_exported_ids mname
let string_of_exported_id_kind: exported_id_kind -> Prims.string =
  fun uu___149_2160  ->
    match uu___149_2160 with
    | Exported_id_field  -> "field"
    | Exported_id_term_type  -> "term/type"
let find_in_module_with_includes:
  'a .
    exported_id_kind ->
      (FStar_Ident.lident -> 'a cont_t) ->
        'a cont_t ->
          env -> FStar_Ident.lident -> FStar_Ident.ident -> 'a cont_t
  =
  fun eikind  ->
    fun find_in_module  ->
      fun find_in_module_default  ->
        fun env  ->
          fun ns  ->
            fun id  ->
              let idstr = id.FStar_Ident.idText in
              let rec aux uu___150_2223 =
                match uu___150_2223 with
                | [] -> find_in_module_default
                | modul::q ->
                    let mname = modul.FStar_Ident.str in
                    let not_shadowed =
                      let uu____2234 = get_exported_id_set env mname in
                      match uu____2234 with
                      | FStar_Pervasives_Native.None  -> true
                      | FStar_Pervasives_Native.Some mex ->
                          let mexports =
                            let uu____2255 = mex eikind in
                            FStar_ST.read uu____2255 in
                          FStar_Util.set_mem idstr mexports in
                    let mincludes =
                      let uu____2264 =
                        FStar_Util.smap_try_find env.includes mname in
                      match uu____2264 with
                      | FStar_Pervasives_Native.None  -> []
                      | FStar_Pervasives_Native.Some minc ->
                          FStar_ST.read minc in
                    let look_into =
                      if not_shadowed
                      then
                        let uu____2299 = qual modul id in
                        find_in_module uu____2299
                      else Cont_ignore in
                    (match look_into with
                     | Cont_ignore  -> aux (FStar_List.append mincludes q)
                     | uu____2303 -> look_into) in
              aux [ns]
let is_exported_id_field: exported_id_kind -> Prims.bool =
  fun uu___151_2309  ->
    match uu___151_2309 with
    | Exported_id_field  -> true
    | uu____2310 -> false
let try_lookup_id'':
  'a .
    env ->
      FStar_Ident.ident ->
        exported_id_kind ->
          (local_binding -> 'a cont_t) ->
            (rec_binding -> 'a cont_t) ->
              (record_or_dc -> 'a cont_t) ->
                (FStar_Ident.lident -> 'a cont_t) ->
                  ('a cont_t -> FStar_Ident.ident -> 'a cont_t) ->
                    'a FStar_Pervasives_Native.option
  =
  fun env  ->
    fun id  ->
      fun eikind  ->
        fun k_local_binding  ->
          fun k_rec_binding  ->
            fun k_record  ->
              fun find_in_module  ->
                fun lookup_default_id  ->
                  let check_local_binding_id uu___152_2421 =
                    match uu___152_2421 with
                    | (id',uu____2423,uu____2424) ->
                        id'.FStar_Ident.idText = id.FStar_Ident.idText in
                  let check_rec_binding_id uu___153_2428 =
                    match uu___153_2428 with
                    | (id',uu____2430,uu____2431) ->
                        id'.FStar_Ident.idText = id.FStar_Ident.idText in
                  let curmod_ns =
                    let uu____2435 = current_module env in
                    FStar_Ident.ids_of_lid uu____2435 in
                  let proc uu___154_2441 =
                    match uu___154_2441 with
                    | Local_binding l when check_local_binding_id l ->
                        k_local_binding l
                    | Rec_binding r when check_rec_binding_id r ->
                        k_rec_binding r
                    | Open_module_or_namespace (ns,Open_module ) ->
                        find_in_module_with_includes eikind find_in_module
                          Cont_ignore env ns id
                    | Top_level_def id' when
                        id'.FStar_Ident.idText = id.FStar_Ident.idText ->
                        lookup_default_id Cont_ignore id
                    | Record_or_dc r when is_exported_id_field eikind ->
                        let uu____2449 = FStar_Ident.lid_of_ids curmod_ns in
                        find_in_module_with_includes Exported_id_field
                          (fun lid  ->
                             let id1 = lid.FStar_Ident.ident in
                             find_in_record lid.FStar_Ident.ns id1 r k_record)
                          Cont_ignore env uu____2449 id
                    | uu____2454 -> Cont_ignore in
                  let rec aux uu___155_2462 =
                    match uu___155_2462 with
                    | a::q ->
                        let uu____2471 = proc a in
                        option_of_cont (fun uu____2475  -> aux q) uu____2471
                    | [] ->
                        let uu____2476 = lookup_default_id Cont_fail id in
                        option_of_cont
                          (fun uu____2480  -> FStar_Pervasives_Native.None)
                          uu____2476 in
                  aux env.scope_mods
let found_local_binding:
  'Auu____2489 'Auu____2490 .
    FStar_Range.range ->
      ('Auu____2490,FStar_Syntax_Syntax.bv,'Auu____2489)
        FStar_Pervasives_Native.tuple3 ->
        (FStar_Syntax_Syntax.term,'Auu____2489)
          FStar_Pervasives_Native.tuple2
  =
  fun r  ->
    fun uu____2508  ->
      match uu____2508 with
      | (id',x,mut) -> let uu____2518 = bv_to_name x r in (uu____2518, mut)
let find_in_module:
  'Auu____2529 .
    env ->
      FStar_Ident.lident ->
        (FStar_Ident.lident ->
           (FStar_Syntax_Syntax.sigelt,Prims.bool)
             FStar_Pervasives_Native.tuple2 -> 'Auu____2529)
          -> 'Auu____2529 -> 'Auu____2529
  =
  fun env  ->
    fun lid  ->
      fun k_global_def  ->
        fun k_not_found  ->
          let uu____2564 =
            FStar_Util.smap_try_find (sigmap env) lid.FStar_Ident.str in
          match uu____2564 with
          | FStar_Pervasives_Native.Some sb -> k_global_def lid sb
          | FStar_Pervasives_Native.None  -> k_not_found
let try_lookup_id:
  env ->
    FStar_Ident.ident ->
      (FStar_Syntax_Syntax.term,Prims.bool) FStar_Pervasives_Native.tuple2
        FStar_Pervasives_Native.option
  =
  fun env  ->
    fun id  ->
      let uu____2602 = unmangleOpName id in
      match uu____2602 with
      | FStar_Pervasives_Native.Some f -> FStar_Pervasives_Native.Some f
      | uu____2628 ->
          try_lookup_id'' env id Exported_id_term_type
            (fun r  ->
               let uu____2642 = found_local_binding id.FStar_Ident.idRange r in
               Cont_ok uu____2642) (fun uu____2652  -> Cont_fail)
            (fun uu____2658  -> Cont_ignore)
            (fun i  ->
               find_in_module env i
                 (fun uu____2673  -> fun uu____2674  -> Cont_fail)
                 Cont_ignore)
            (fun uu____2689  -> fun uu____2690  -> Cont_fail)
let lookup_default_id:
  'a .
    env ->
      FStar_Ident.ident ->
        (FStar_Ident.lident ->
           (FStar_Syntax_Syntax.sigelt,Prims.bool)
             FStar_Pervasives_Native.tuple2 -> 'a cont_t)
          -> 'a cont_t -> 'a cont_t
  =
  fun env  ->
    fun id  ->
      fun k_global_def  ->
        fun k_not_found  ->
          let find_in_monad =
            match env.curmonad with
            | FStar_Pervasives_Native.Some uu____2765 ->
                let lid = qualify env id in
                let uu____2767 =
                  FStar_Util.smap_try_find (sigmap env) lid.FStar_Ident.str in
                (match uu____2767 with
                 | FStar_Pervasives_Native.Some r ->
                     let uu____2791 = k_global_def lid r in
                     FStar_Pervasives_Native.Some uu____2791
                 | FStar_Pervasives_Native.None  ->
                     FStar_Pervasives_Native.None)
            | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None in
          match find_in_monad with
          | FStar_Pervasives_Native.Some v1 -> v1
          | FStar_Pervasives_Native.None  ->
              let lid =
                let uu____2814 = current_module env in qual uu____2814 id in
              find_in_module env lid k_global_def k_not_found
let module_is_defined: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun lid  ->
      (match env.curmodule with
       | FStar_Pervasives_Native.None  -> false
       | FStar_Pervasives_Native.Some m ->
           let uu____2826 = current_module env in
           FStar_Ident.lid_equals lid uu____2826)
        ||
        (FStar_List.existsb
           (fun x  ->
              FStar_Ident.lid_equals lid (FStar_Pervasives_Native.fst x))
           env.modules)
let resolve_module_name:
  env ->
    FStar_Ident.lident ->
      Prims.bool -> FStar_Ident.lident FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      fun honor_ns  ->
        let nslen = FStar_List.length lid.FStar_Ident.ns in
        let rec aux uu___156_2861 =
          match uu___156_2861 with
          | [] ->
              let uu____2866 = module_is_defined env lid in
              if uu____2866
              then FStar_Pervasives_Native.Some lid
              else FStar_Pervasives_Native.None
          | (Open_module_or_namespace (ns,Open_namespace ))::q when honor_ns
              ->
              let new_lid =
                let uu____2875 =
                  let uu____2878 = FStar_Ident.path_of_lid ns in
                  let uu____2881 = FStar_Ident.path_of_lid lid in
                  FStar_List.append uu____2878 uu____2881 in
                FStar_Ident.lid_of_path uu____2875
                  (FStar_Ident.range_of_lid lid) in
              let uu____2884 = module_is_defined env new_lid in
              if uu____2884
              then FStar_Pervasives_Native.Some new_lid
              else aux q
          | (Module_abbrev (name,modul))::uu____2890 when
              (nslen = (Prims.parse_int "0")) &&
                (name.FStar_Ident.idText =
                   (lid.FStar_Ident.ident).FStar_Ident.idText)
              -> FStar_Pervasives_Native.Some modul
          | uu____2897::q -> aux q in
        aux env.scope_mods
let fail_if_curmodule:
  env -> FStar_Ident.lident -> FStar_Ident.lident -> Prims.unit =
  fun env  ->
    fun ns_original  ->
      fun ns_resolved  ->
        let uu____2913 =
          let uu____2914 = current_module env in
          FStar_Ident.lid_equals ns_resolved uu____2914 in
        if uu____2913
        then
          (if FStar_Ident.lid_equals ns_resolved FStar_Parser_Const.prims_lid
           then ()
           else
             (let uu____2916 =
                let uu____2917 =
                  let uu____2922 =
                    FStar_Util.format1
                      "Reference %s to current module is forbidden (see GitHub issue #451)"
                      ns_original.FStar_Ident.str in
                  (uu____2922, (FStar_Ident.range_of_lid ns_original)) in
                FStar_Errors.Error uu____2917 in
              raise uu____2916))
        else ()
let fail_if_qualified_by_curmodule: env -> FStar_Ident.lident -> Prims.unit =
  fun env  ->
    fun lid  ->
      match lid.FStar_Ident.ns with
      | [] -> ()
      | uu____2932 ->
          let modul_orig = FStar_Ident.lid_of_ids lid.FStar_Ident.ns in
          let uu____2936 = resolve_module_name env modul_orig true in
          (match uu____2936 with
           | FStar_Pervasives_Native.Some modul_res ->
               fail_if_curmodule env modul_orig modul_res
           | uu____2940 -> ())
let namespace_is_open: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun lid  ->
      FStar_List.existsb
        (fun uu___157_2953  ->
           match uu___157_2953 with
           | Open_module_or_namespace (ns,Open_namespace ) ->
               FStar_Ident.lid_equals lid ns
           | uu____2955 -> false) env.scope_mods
let shorten_module_path:
  env ->
    FStar_Ident.ident Prims.list ->
      Prims.bool ->
        (FStar_Ident.ident Prims.list,FStar_Ident.ident Prims.list)
          FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun ids  ->
      fun is_full_path  ->
        let rec aux revns id =
          let lid = FStar_Ident.lid_of_ns_and_id (FStar_List.rev revns) id in
          if namespace_is_open env lid
          then
            FStar_Pervasives_Native.Some ((FStar_List.rev (id :: revns)), [])
          else
            (match revns with
             | [] -> FStar_Pervasives_Native.None
             | ns_last_id::rev_ns_prefix ->
                 let uu____3047 = aux rev_ns_prefix ns_last_id in
                 FStar_All.pipe_right uu____3047
                   (FStar_Util.map_option
                      (fun uu____3097  ->
                         match uu____3097 with
                         | (stripped_ids,rev_kept_ids) ->
                             (stripped_ids, (id :: rev_kept_ids))))) in
        let uu____3128 =
          is_full_path &&
            (let uu____3130 = FStar_Ident.lid_of_ids ids in
             module_is_defined env uu____3130) in
        if uu____3128
        then (ids, [])
        else
          (match FStar_List.rev ids with
           | [] -> ([], [])
           | ns_last_id::ns_rev_prefix ->
               let uu____3160 = aux ns_rev_prefix ns_last_id in
               (match uu____3160 with
                | FStar_Pervasives_Native.None  -> ([], ids)
                | FStar_Pervasives_Native.Some (stripped_ids,rev_kept_ids) ->
                    (stripped_ids, (FStar_List.rev rev_kept_ids))))
let shorten_lid: env -> FStar_Ident.lid -> FStar_Ident.lid =
  fun env  ->
    fun lid  ->
      let uu____3221 = shorten_module_path env lid.FStar_Ident.ns true in
      match uu____3221 with
      | (uu____3230,short) ->
          FStar_Ident.lid_of_ns_and_id short lid.FStar_Ident.ident
let resolve_in_open_namespaces'':
  'a .
    env ->
      FStar_Ident.lident ->
        exported_id_kind ->
          (local_binding -> 'a cont_t) ->
            (rec_binding -> 'a cont_t) ->
              (record_or_dc -> 'a cont_t) ->
                (FStar_Ident.lident -> 'a cont_t) ->
                  ('a cont_t -> FStar_Ident.ident -> 'a cont_t) ->
                    'a FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      fun eikind  ->
        fun k_local_binding  ->
          fun k_rec_binding  ->
            fun k_record  ->
              fun f_module  ->
                fun l_default  ->
                  match lid.FStar_Ident.ns with
                  | uu____3347::uu____3348 ->
                      let uu____3351 =
                        let uu____3354 =
                          let uu____3355 =
                            FStar_Ident.lid_of_ids lid.FStar_Ident.ns in
                          FStar_Ident.set_lid_range uu____3355
                            (FStar_Ident.range_of_lid lid) in
                        resolve_module_name env uu____3354 true in
                      (match uu____3351 with
                       | FStar_Pervasives_Native.None  ->
                           FStar_Pervasives_Native.None
                       | FStar_Pervasives_Native.Some modul ->
                           let uu____3359 =
                             find_in_module_with_includes eikind f_module
                               Cont_fail env modul lid.FStar_Ident.ident in
                           option_of_cont
                             (fun uu____3363  -> FStar_Pervasives_Native.None)
                             uu____3359)
                  | [] ->
                      try_lookup_id'' env lid.FStar_Ident.ident eikind
                        k_local_binding k_rec_binding k_record f_module
                        l_default
let cont_of_option:
  'a . 'a cont_t -> 'a FStar_Pervasives_Native.option -> 'a cont_t =
  fun k_none  ->
    fun uu___158_3384  ->
      match uu___158_3384 with
      | FStar_Pervasives_Native.Some v1 -> Cont_ok v1
      | FStar_Pervasives_Native.None  -> k_none
let resolve_in_open_namespaces':
  'a .
    env ->
      FStar_Ident.lident ->
        (local_binding -> 'a FStar_Pervasives_Native.option) ->
          (rec_binding -> 'a FStar_Pervasives_Native.option) ->
            (FStar_Ident.lident ->
               (FStar_Syntax_Syntax.sigelt,Prims.bool)
                 FStar_Pervasives_Native.tuple2 ->
                 'a FStar_Pervasives_Native.option)
              -> 'a FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      fun k_local_binding  ->
        fun k_rec_binding  ->
          fun k_global_def  ->
            let k_global_def' k lid1 def =
              let uu____3489 = k_global_def lid1 def in
              cont_of_option k uu____3489 in
            let f_module lid' =
              let k = Cont_ignore in
              find_in_module env lid' (k_global_def' k) k in
            let l_default k i = lookup_default_id env i (k_global_def' k) k in
            resolve_in_open_namespaces'' env lid Exported_id_term_type
              (fun l  ->
                 let uu____3519 = k_local_binding l in
                 cont_of_option Cont_fail uu____3519)
              (fun r  ->
                 let uu____3525 = k_rec_binding r in
                 cont_of_option Cont_fail uu____3525)
              (fun uu____3529  -> Cont_ignore) f_module l_default
let fv_qual_of_se:
  FStar_Syntax_Syntax.sigelt ->
    FStar_Syntax_Syntax.fv_qual FStar_Pervasives_Native.option
  =
  fun se  ->
    match se.FStar_Syntax_Syntax.sigel with
    | FStar_Syntax_Syntax.Sig_datacon
        (uu____3538,uu____3539,uu____3540,l,uu____3542,uu____3543) ->
        let qopt =
          FStar_Util.find_map se.FStar_Syntax_Syntax.sigquals
            (fun uu___159_3554  ->
               match uu___159_3554 with
               | FStar_Syntax_Syntax.RecordConstructor (uu____3557,fs) ->
                   FStar_Pervasives_Native.Some
                     (FStar_Syntax_Syntax.Record_ctor (l, fs))
               | uu____3569 -> FStar_Pervasives_Native.None) in
        (match qopt with
         | FStar_Pervasives_Native.None  ->
             FStar_Pervasives_Native.Some FStar_Syntax_Syntax.Data_ctor
         | x -> x)
    | FStar_Syntax_Syntax.Sig_declare_typ (uu____3575,uu____3576,uu____3577)
        -> FStar_Pervasives_Native.None
    | uu____3578 -> FStar_Pervasives_Native.None
let lb_fv:
  FStar_Syntax_Syntax.letbinding Prims.list ->
    FStar_Ident.lident -> FStar_Syntax_Syntax.fv
  =
  fun lbs  ->
    fun lid  ->
      let uu____3591 =
        FStar_Util.find_map lbs
          (fun lb  ->
             let fv = FStar_Util.right lb.FStar_Syntax_Syntax.lbname in
             let uu____3599 = FStar_Syntax_Syntax.fv_eq_lid fv lid in
             if uu____3599
             then FStar_Pervasives_Native.Some fv
             else FStar_Pervasives_Native.None) in
      FStar_All.pipe_right uu____3591 FStar_Util.must
let ns_of_lid_equals: FStar_Ident.lident -> FStar_Ident.lident -> Prims.bool
  =
  fun lid  ->
    fun ns  ->
      ((FStar_List.length lid.FStar_Ident.ns) =
         (FStar_List.length (FStar_Ident.ids_of_lid ns)))
        &&
        (let uu____3614 = FStar_Ident.lid_of_ids lid.FStar_Ident.ns in
         FStar_Ident.lid_equals uu____3614 ns)
let try_lookup_name:
  Prims.bool ->
    Prims.bool ->
      env -> FStar_Ident.lident -> foundname FStar_Pervasives_Native.option
  =
  fun any_val  ->
    fun exclude_interf  ->
      fun env  ->
        fun lid  ->
          let occurrence_range = FStar_Ident.range_of_lid lid in
          let k_global_def source_lid uu___163_3648 =
            match uu___163_3648 with
            | (uu____3655,true ) when exclude_interf ->
                FStar_Pervasives_Native.None
            | (se,uu____3657) ->
                (match se.FStar_Syntax_Syntax.sigel with
                 | FStar_Syntax_Syntax.Sig_inductive_typ uu____3660 ->
                     let uu____3677 =
                       let uu____3678 =
                         let uu____3683 =
                           FStar_Syntax_Syntax.fvar source_lid
                             FStar_Syntax_Syntax.Delta_constant
                             FStar_Pervasives_Native.None in
                         (uu____3683, false) in
                       Term_name uu____3678 in
                     FStar_Pervasives_Native.Some uu____3677
                 | FStar_Syntax_Syntax.Sig_datacon uu____3684 ->
                     let uu____3699 =
                       let uu____3700 =
                         let uu____3705 =
                           let uu____3706 = fv_qual_of_se se in
                           FStar_Syntax_Syntax.fvar source_lid
                             FStar_Syntax_Syntax.Delta_constant uu____3706 in
                         (uu____3705, false) in
                       Term_name uu____3700 in
                     FStar_Pervasives_Native.Some uu____3699
                 | FStar_Syntax_Syntax.Sig_let ((uu____3709,lbs),uu____3711)
                     ->
                     let fv = lb_fv lbs source_lid in
                     let uu____3727 =
                       let uu____3728 =
                         let uu____3733 =
                           FStar_Syntax_Syntax.fvar source_lid
                             fv.FStar_Syntax_Syntax.fv_delta
                             fv.FStar_Syntax_Syntax.fv_qual in
                         (uu____3733, false) in
                       Term_name uu____3728 in
                     FStar_Pervasives_Native.Some uu____3727
                 | FStar_Syntax_Syntax.Sig_declare_typ
                     (lid1,uu____3735,uu____3736) ->
                     let quals = se.FStar_Syntax_Syntax.sigquals in
                     let uu____3740 =
                       any_val ||
                         (FStar_All.pipe_right quals
                            (FStar_Util.for_some
                               (fun uu___160_3744  ->
                                  match uu___160_3744 with
                                  | FStar_Syntax_Syntax.Assumption  -> true
                                  | uu____3745 -> false))) in
                     if uu____3740
                     then
                       let lid2 =
                         FStar_Ident.set_lid_range lid1
                           (FStar_Ident.range_of_lid source_lid) in
                       let dd =
                         let uu____3750 =
                           (FStar_Syntax_Util.is_primop_lid lid2) ||
                             (FStar_All.pipe_right quals
                                (FStar_Util.for_some
                                   (fun uu___161_3755  ->
                                      match uu___161_3755 with
                                      | FStar_Syntax_Syntax.Projector
                                          uu____3756 -> true
                                      | FStar_Syntax_Syntax.Discriminator
                                          uu____3761 -> true
                                      | uu____3762 -> false))) in
                         if uu____3750
                         then FStar_Syntax_Syntax.Delta_equational
                         else FStar_Syntax_Syntax.Delta_constant in
                       let uu____3764 =
                         FStar_Util.find_map quals
                           (fun uu___162_3769  ->
                              match uu___162_3769 with
                              | FStar_Syntax_Syntax.Reflectable refl_monad ->
                                  FStar_Pervasives_Native.Some refl_monad
                              | uu____3773 -> FStar_Pervasives_Native.None) in
                       (match uu____3764 with
                        | FStar_Pervasives_Native.Some refl_monad ->
                            let refl_const =
                              FStar_Syntax_Syntax.mk
                                (FStar_Syntax_Syntax.Tm_constant
                                   (FStar_Const.Const_reflect refl_monad))
                                FStar_Pervasives_Native.None occurrence_range in
                            FStar_Pervasives_Native.Some
                              (Term_name (refl_const, false))
                        | uu____3782 ->
                            let uu____3785 =
                              let uu____3786 =
                                let uu____3791 =
                                  let uu____3792 = fv_qual_of_se se in
                                  FStar_Syntax_Syntax.fvar lid2 dd uu____3792 in
                                (uu____3791, false) in
                              Term_name uu____3786 in
                            FStar_Pervasives_Native.Some uu____3785)
                     else FStar_Pervasives_Native.None
                 | FStar_Syntax_Syntax.Sig_new_effect_for_free ne ->
                     FStar_Pervasives_Native.Some
                       (Eff_name
                          (se,
                            (FStar_Ident.set_lid_range
                               ne.FStar_Syntax_Syntax.mname
                               (FStar_Ident.range_of_lid source_lid))))
                 | FStar_Syntax_Syntax.Sig_new_effect ne ->
                     FStar_Pervasives_Native.Some
                       (Eff_name
                          (se,
                            (FStar_Ident.set_lid_range
                               ne.FStar_Syntax_Syntax.mname
                               (FStar_Ident.range_of_lid source_lid))))
                 | FStar_Syntax_Syntax.Sig_effect_abbrev uu____3798 ->
                     FStar_Pervasives_Native.Some (Eff_name (se, source_lid))
                 | uu____3811 -> FStar_Pervasives_Native.None) in
          let k_local_binding r =
            let uu____3830 =
              let uu____3831 =
                found_local_binding (FStar_Ident.range_of_lid lid) r in
              Term_name uu____3831 in
            FStar_Pervasives_Native.Some uu____3830 in
          let k_rec_binding uu____3847 =
            match uu____3847 with
            | (id,l,dd) ->
                let uu____3859 =
                  let uu____3860 =
                    let uu____3865 =
                      FStar_Syntax_Syntax.fvar
                        (FStar_Ident.set_lid_range l
                           (FStar_Ident.range_of_lid lid)) dd
                        FStar_Pervasives_Native.None in
                    (uu____3865, false) in
                  Term_name uu____3860 in
                FStar_Pervasives_Native.Some uu____3859 in
          let found_unmangled =
            match lid.FStar_Ident.ns with
            | [] ->
                let uu____3871 = unmangleOpName lid.FStar_Ident.ident in
                (match uu____3871 with
                 | FStar_Pervasives_Native.Some f ->
                     FStar_Pervasives_Native.Some (Term_name f)
                 | uu____3889 -> FStar_Pervasives_Native.None)
            | uu____3896 -> FStar_Pervasives_Native.None in
          match found_unmangled with
          | FStar_Pervasives_Native.None  ->
              resolve_in_open_namespaces' env lid k_local_binding
                k_rec_binding k_global_def
          | x -> x
let try_lookup_effect_name':
  Prims.bool ->
    env ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.sigelt,FStar_Ident.lident)
          FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun exclude_interf  ->
    fun env  ->
      fun lid  ->
        let uu____3928 = try_lookup_name true exclude_interf env lid in
        match uu____3928 with
        | FStar_Pervasives_Native.Some (Eff_name (o,l)) ->
            FStar_Pervasives_Native.Some (o, l)
        | uu____3943 -> FStar_Pervasives_Native.None
let try_lookup_effect_name:
  env ->
    FStar_Ident.lident -> FStar_Ident.lident FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      let uu____3960 =
        try_lookup_effect_name' (Prims.op_Negation env.iface) env l in
      match uu____3960 with
      | FStar_Pervasives_Native.Some (o,l1) ->
          FStar_Pervasives_Native.Some l1
      | uu____3975 -> FStar_Pervasives_Native.None
let try_lookup_effect_name_and_attributes:
  env ->
    FStar_Ident.lident ->
      (FStar_Ident.lident,FStar_Syntax_Syntax.cflags Prims.list)
        FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      let uu____3998 =
        try_lookup_effect_name' (Prims.op_Negation env.iface) env l in
      match uu____3998 with
      | FStar_Pervasives_Native.Some
          ({
             FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_new_effect
               ne;
             FStar_Syntax_Syntax.sigrng = uu____4014;
             FStar_Syntax_Syntax.sigquals = uu____4015;
             FStar_Syntax_Syntax.sigmeta = uu____4016;
             FStar_Syntax_Syntax.sigattrs = uu____4017;_},l1)
          ->
          FStar_Pervasives_Native.Some
            (l1, (ne.FStar_Syntax_Syntax.cattributes))
      | FStar_Pervasives_Native.Some
          ({
             FStar_Syntax_Syntax.sigel =
               FStar_Syntax_Syntax.Sig_new_effect_for_free ne;
             FStar_Syntax_Syntax.sigrng = uu____4036;
             FStar_Syntax_Syntax.sigquals = uu____4037;
             FStar_Syntax_Syntax.sigmeta = uu____4038;
             FStar_Syntax_Syntax.sigattrs = uu____4039;_},l1)
          ->
          FStar_Pervasives_Native.Some
            (l1, (ne.FStar_Syntax_Syntax.cattributes))
      | FStar_Pervasives_Native.Some
          ({
             FStar_Syntax_Syntax.sigel =
               FStar_Syntax_Syntax.Sig_effect_abbrev
               (uu____4057,uu____4058,uu____4059,uu____4060,cattributes);
             FStar_Syntax_Syntax.sigrng = uu____4062;
             FStar_Syntax_Syntax.sigquals = uu____4063;
             FStar_Syntax_Syntax.sigmeta = uu____4064;
             FStar_Syntax_Syntax.sigattrs = uu____4065;_},l1)
          -> FStar_Pervasives_Native.Some (l1, cattributes)
      | uu____4087 -> FStar_Pervasives_Native.None
let try_lookup_effect_defn:
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.eff_decl FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      let uu____4110 =
        try_lookup_effect_name' (Prims.op_Negation env.iface) env l in
      match uu____4110 with
      | FStar_Pervasives_Native.Some
          ({
             FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_new_effect
               ne;
             FStar_Syntax_Syntax.sigrng = uu____4120;
             FStar_Syntax_Syntax.sigquals = uu____4121;
             FStar_Syntax_Syntax.sigmeta = uu____4122;
             FStar_Syntax_Syntax.sigattrs = uu____4123;_},uu____4124)
          -> FStar_Pervasives_Native.Some ne
      | FStar_Pervasives_Native.Some
          ({
             FStar_Syntax_Syntax.sigel =
               FStar_Syntax_Syntax.Sig_new_effect_for_free ne;
             FStar_Syntax_Syntax.sigrng = uu____4134;
             FStar_Syntax_Syntax.sigquals = uu____4135;
             FStar_Syntax_Syntax.sigmeta = uu____4136;
             FStar_Syntax_Syntax.sigattrs = uu____4137;_},uu____4138)
          -> FStar_Pervasives_Native.Some ne
      | uu____4147 -> FStar_Pervasives_Native.None
let is_effect_name: env -> FStar_Ident.lident -> Prims.bool =
  fun env  ->
    fun lid  ->
      let uu____4162 = try_lookup_effect_name env lid in
      match uu____4162 with
      | FStar_Pervasives_Native.None  -> false
      | FStar_Pervasives_Native.Some uu____4165 -> true
let try_lookup_root_effect_name:
  env ->
    FStar_Ident.lident -> FStar_Ident.lident FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      let uu____4176 =
        try_lookup_effect_name' (Prims.op_Negation env.iface) env l in
      match uu____4176 with
      | FStar_Pervasives_Native.Some
          ({
             FStar_Syntax_Syntax.sigel =
               FStar_Syntax_Syntax.Sig_effect_abbrev
               (l',uu____4186,uu____4187,uu____4188,uu____4189);
             FStar_Syntax_Syntax.sigrng = uu____4190;
             FStar_Syntax_Syntax.sigquals = uu____4191;
             FStar_Syntax_Syntax.sigmeta = uu____4192;
             FStar_Syntax_Syntax.sigattrs = uu____4193;_},uu____4194)
          ->
          let rec aux new_name =
            let uu____4213 =
              FStar_Util.smap_try_find (sigmap env) new_name.FStar_Ident.str in
            match uu____4213 with
            | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
            | FStar_Pervasives_Native.Some (s,uu____4231) ->
                (match s.FStar_Syntax_Syntax.sigel with
                 | FStar_Syntax_Syntax.Sig_new_effect_for_free ne ->
                     FStar_Pervasives_Native.Some
                       (FStar_Ident.set_lid_range
                          ne.FStar_Syntax_Syntax.mname
                          (FStar_Ident.range_of_lid l))
                 | FStar_Syntax_Syntax.Sig_new_effect ne ->
                     FStar_Pervasives_Native.Some
                       (FStar_Ident.set_lid_range
                          ne.FStar_Syntax_Syntax.mname
                          (FStar_Ident.range_of_lid l))
                 | FStar_Syntax_Syntax.Sig_effect_abbrev
                     (uu____4240,uu____4241,uu____4242,cmp,uu____4244) ->
                     let l'' = FStar_Syntax_Util.comp_effect_name cmp in
                     aux l''
                 | uu____4250 -> FStar_Pervasives_Native.None) in
          aux l'
      | FStar_Pervasives_Native.Some (uu____4251,l') ->
          FStar_Pervasives_Native.Some l'
      | uu____4257 -> FStar_Pervasives_Native.None
let lookup_letbinding_quals:
  env -> FStar_Ident.lident -> FStar_Syntax_Syntax.qualifier Prims.list =
  fun env  ->
    fun lid  ->
      let k_global_def lid1 uu___164_4288 =
        match uu___164_4288 with
        | ({
             FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_declare_typ
               (uu____4297,uu____4298,uu____4299);
             FStar_Syntax_Syntax.sigrng = uu____4300;
             FStar_Syntax_Syntax.sigquals = quals;
             FStar_Syntax_Syntax.sigmeta = uu____4302;
             FStar_Syntax_Syntax.sigattrs = uu____4303;_},uu____4304)
            -> FStar_Pervasives_Native.Some quals
        | uu____4311 -> FStar_Pervasives_Native.None in
      let uu____4318 =
        resolve_in_open_namespaces' env lid
          (fun uu____4326  -> FStar_Pervasives_Native.None)
          (fun uu____4330  -> FStar_Pervasives_Native.None) k_global_def in
      match uu____4318 with
      | FStar_Pervasives_Native.Some quals -> quals
      | uu____4340 -> []
let try_lookup_module:
  env ->
    Prims.string Prims.list ->
      FStar_Syntax_Syntax.modul FStar_Pervasives_Native.option
  =
  fun env  ->
    fun path  ->
      let uu____4359 =
        FStar_List.tryFind
          (fun uu____4374  ->
             match uu____4374 with
             | (mlid,modul) ->
                 let uu____4381 = FStar_Ident.path_of_lid mlid in
                 uu____4381 = path) env.modules in
      match uu____4359 with
      | FStar_Pervasives_Native.Some (uu____4388,modul) ->
          FStar_Pervasives_Native.Some modul
      | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
let try_lookup_let:
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.term FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      let k_global_def lid1 uu___165_4420 =
        match uu___165_4420 with
        | ({
             FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_let
               ((uu____4427,lbs),uu____4429);
             FStar_Syntax_Syntax.sigrng = uu____4430;
             FStar_Syntax_Syntax.sigquals = uu____4431;
             FStar_Syntax_Syntax.sigmeta = uu____4432;
             FStar_Syntax_Syntax.sigattrs = uu____4433;_},uu____4434)
            ->
            let fv = lb_fv lbs lid1 in
            let uu____4454 =
              FStar_Syntax_Syntax.fvar lid1 fv.FStar_Syntax_Syntax.fv_delta
                fv.FStar_Syntax_Syntax.fv_qual in
            FStar_Pervasives_Native.Some uu____4454
        | uu____4455 -> FStar_Pervasives_Native.None in
      resolve_in_open_namespaces' env lid
        (fun uu____4461  -> FStar_Pervasives_Native.None)
        (fun uu____4463  -> FStar_Pervasives_Native.None) k_global_def
let try_lookup_definition:
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.term FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      let k_global_def lid1 uu___166_4488 =
        match uu___166_4488 with
        | ({
             FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_let
               (lbs,uu____4498);
             FStar_Syntax_Syntax.sigrng = uu____4499;
             FStar_Syntax_Syntax.sigquals = uu____4500;
             FStar_Syntax_Syntax.sigmeta = uu____4501;
             FStar_Syntax_Syntax.sigattrs = uu____4502;_},uu____4503)
            ->
            FStar_Util.find_map (FStar_Pervasives_Native.snd lbs)
              (fun lb  ->
                 match lb.FStar_Syntax_Syntax.lbname with
                 | FStar_Util.Inr fv when
                     FStar_Syntax_Syntax.fv_eq_lid fv lid1 ->
                     FStar_Pervasives_Native.Some
                       (lb.FStar_Syntax_Syntax.lbdef)
                 | uu____4526 -> FStar_Pervasives_Native.None)
        | uu____4533 -> FStar_Pervasives_Native.None in
      resolve_in_open_namespaces' env lid
        (fun uu____4543  -> FStar_Pervasives_Native.None)
        (fun uu____4547  -> FStar_Pervasives_Native.None) k_global_def
let empty_include_smap:
  FStar_Ident.lident Prims.list FStar_ST.ref FStar_Util.smap = new_sigmap ()
let empty_exported_id_smap: exported_id_set FStar_Util.smap = new_sigmap ()
let try_lookup_lid':
  Prims.bool ->
    Prims.bool ->
      env ->
        FStar_Ident.lident ->
          (FStar_Syntax_Syntax.term,Prims.bool)
            FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun any_val  ->
    fun exclude_interf  ->
      fun env  ->
        fun lid  ->
          let uu____4590 = try_lookup_name any_val exclude_interf env lid in
          match uu____4590 with
          | FStar_Pervasives_Native.Some (Term_name (e,mut)) ->
              FStar_Pervasives_Native.Some (e, mut)
          | uu____4605 -> FStar_Pervasives_Native.None
let try_lookup_lid:
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.term,Prims.bool) FStar_Pervasives_Native.tuple2
        FStar_Pervasives_Native.option
  = fun env  -> fun l  -> try_lookup_lid' env.iface false env l
let resolve_to_fully_qualified_name:
  env ->
    FStar_Ident.lident -> FStar_Ident.lident FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      let uu____4636 = try_lookup_lid env l in
      match uu____4636 with
      | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
      | FStar_Pervasives_Native.Some (e,uu____4650) ->
          let uu____4655 =
            let uu____4656 = FStar_Syntax_Subst.compress e in
            uu____4656.FStar_Syntax_Syntax.n in
          (match uu____4655 with
           | FStar_Syntax_Syntax.Tm_fvar fv ->
               FStar_Pervasives_Native.Some
                 ((fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v)
           | uu____4662 -> FStar_Pervasives_Native.None)
let try_lookup_lid_no_resolve:
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.term,Prims.bool) FStar_Pervasives_Native.tuple2
        FStar_Pervasives_Native.option
  =
  fun env  ->
    fun l  ->
      let env' =
        let uu___184_4678 = env in
        {
          curmodule = (uu___184_4678.curmodule);
          curmonad = (uu___184_4678.curmonad);
          modules = (uu___184_4678.modules);
          scope_mods = [];
          exported_ids = empty_exported_id_smap;
          trans_exported_ids = (uu___184_4678.trans_exported_ids);
          includes = empty_include_smap;
          sigaccum = (uu___184_4678.sigaccum);
          sigmap = (uu___184_4678.sigmap);
          iface = (uu___184_4678.iface);
          admitted_iface = (uu___184_4678.admitted_iface);
          expect_typ = (uu___184_4678.expect_typ);
          docs = (uu___184_4678.docs);
          remaining_iface_decls = (uu___184_4678.remaining_iface_decls);
          syntax_only = (uu___184_4678.syntax_only)
        } in
      try_lookup_lid env' l
let try_lookup_doc:
  env ->
    FStar_Ident.lid -> FStar_Parser_AST.fsdoc FStar_Pervasives_Native.option
  = fun env  -> fun l  -> FStar_Util.smap_try_find env.docs l.FStar_Ident.str
let try_lookup_datacon:
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.fv FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      let k_global_def lid1 uu___168_4711 =
        match uu___168_4711 with
        | ({
             FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_declare_typ
               (uu____4718,uu____4719,uu____4720);
             FStar_Syntax_Syntax.sigrng = uu____4721;
             FStar_Syntax_Syntax.sigquals = quals;
             FStar_Syntax_Syntax.sigmeta = uu____4723;
             FStar_Syntax_Syntax.sigattrs = uu____4724;_},uu____4725)
            ->
            let uu____4730 =
              FStar_All.pipe_right quals
                (FStar_Util.for_some
                   (fun uu___167_4734  ->
                      match uu___167_4734 with
                      | FStar_Syntax_Syntax.Assumption  -> true
                      | uu____4735 -> false)) in
            if uu____4730
            then
              let uu____4738 =
                FStar_Syntax_Syntax.lid_as_fv lid1
                  FStar_Syntax_Syntax.Delta_constant
                  FStar_Pervasives_Native.None in
              FStar_Pervasives_Native.Some uu____4738
            else FStar_Pervasives_Native.None
        | ({
             FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_datacon
               uu____4740;
             FStar_Syntax_Syntax.sigrng = uu____4741;
             FStar_Syntax_Syntax.sigquals = uu____4742;
             FStar_Syntax_Syntax.sigmeta = uu____4743;
             FStar_Syntax_Syntax.sigattrs = uu____4744;_},uu____4745)
            ->
            let uu____4764 =
              FStar_Syntax_Syntax.lid_as_fv lid1
                FStar_Syntax_Syntax.Delta_constant
                (FStar_Pervasives_Native.Some FStar_Syntax_Syntax.Data_ctor) in
            FStar_Pervasives_Native.Some uu____4764
        | uu____4765 -> FStar_Pervasives_Native.None in
      resolve_in_open_namespaces' env lid
        (fun uu____4771  -> FStar_Pervasives_Native.None)
        (fun uu____4773  -> FStar_Pervasives_Native.None) k_global_def
let find_all_datacons:
  env ->
    FStar_Ident.lident ->
      FStar_Ident.lident Prims.list FStar_Pervasives_Native.option
  =
  fun env  ->
    fun lid  ->
      let k_global_def lid1 uu___169_4800 =
        match uu___169_4800 with
        | ({
             FStar_Syntax_Syntax.sigel =
               FStar_Syntax_Syntax.Sig_inductive_typ
               (uu____4809,uu____4810,uu____4811,uu____4812,datas,uu____4814);
             FStar_Syntax_Syntax.sigrng = uu____4815;
             FStar_Syntax_Syntax.sigquals = uu____4816;
             FStar_Syntax_Syntax.sigmeta = uu____4817;
             FStar_Syntax_Syntax.sigattrs = uu____4818;_},uu____4819)
            -> FStar_Pervasives_Native.Some datas
        | uu____4834 -> FStar_Pervasives_Native.None in
      resolve_in_open_namespaces' env lid
        (fun uu____4844  -> FStar_Pervasives_Native.None)
        (fun uu____4848  -> FStar_Pervasives_Native.None) k_global_def
let record_cache_aux_with_filter:
  ((Prims.unit -> Prims.unit,Prims.unit -> Prims.unit,Prims.unit ->
                                                        record_or_dc
                                                          Prims.list,
     record_or_dc -> Prims.unit,Prims.unit -> Prims.unit)
     FStar_Pervasives_Native.tuple5,Prims.unit -> Prims.unit)
    FStar_Pervasives_Native.tuple2
  =
  let record_cache = FStar_Util.mk_ref [[]] in
  let push1 uu____4897 =
    let uu____4898 =
      let uu____4903 =
        let uu____4906 = FStar_ST.read record_cache in
        FStar_List.hd uu____4906 in
      let uu____4919 = FStar_ST.read record_cache in uu____4903 :: uu____4919 in
    FStar_ST.write record_cache uu____4898 in
  let pop1 uu____4941 =
    let uu____4942 =
      let uu____4947 = FStar_ST.read record_cache in FStar_List.tl uu____4947 in
    FStar_ST.write record_cache uu____4942 in
  let peek1 uu____4971 =
    let uu____4972 = FStar_ST.read record_cache in FStar_List.hd uu____4972 in
  let insert r =
    let uu____4989 =
      let uu____4994 = let uu____4997 = peek1 () in r :: uu____4997 in
      let uu____5000 =
        let uu____5005 = FStar_ST.read record_cache in
        FStar_List.tl uu____5005 in
      uu____4994 :: uu____5000 in
    FStar_ST.write record_cache uu____4989 in
  let commit1 uu____5029 =
    let uu____5030 = FStar_ST.read record_cache in
    match uu____5030 with
    | hd1::uu____5042::tl1 -> FStar_ST.write record_cache (hd1 :: tl1)
    | uu____5064 -> failwith "Impossible" in
  let filter1 uu____5072 =
    let rc = peek1 () in
    pop1 ();
    (match () with
     | () ->
         let filtered =
           FStar_List.filter
             (fun r  -> Prims.op_Negation r.is_private_or_abstract) rc in
         let uu____5082 =
           let uu____5087 = FStar_ST.read record_cache in filtered ::
             uu____5087 in
         FStar_ST.write record_cache uu____5082) in
  let aux = (push1, pop1, peek1, insert, commit1) in (aux, filter1)
let record_cache_aux:
  (Prims.unit -> Prims.unit,Prims.unit -> Prims.unit,Prims.unit ->
                                                       record_or_dc
                                                         Prims.list,record_or_dc
                                                                    ->
                                                                    Prims.unit,
    Prims.unit -> Prims.unit) FStar_Pervasives_Native.tuple5
  =
  let uu____5187 = record_cache_aux_with_filter in
  match uu____5187 with | (aux,uu____5239) -> aux
let filter_record_cache: Prims.unit -> Prims.unit =
  let uu____5291 = record_cache_aux_with_filter in
  match uu____5291 with | (uu____5322,filter1) -> filter1
let push_record_cache: Prims.unit -> Prims.unit =
  let uu____5375 = record_cache_aux in
  match uu____5375 with
  | (push1,uu____5401,uu____5402,uu____5403,uu____5404) -> push1
let pop_record_cache: Prims.unit -> Prims.unit =
  let uu____5432 = record_cache_aux in
  match uu____5432 with
  | (uu____5457,pop1,uu____5459,uu____5460,uu____5461) -> pop1
let peek_record_cache: Prims.unit -> record_or_dc Prims.list =
  let uu____5491 = record_cache_aux in
  match uu____5491 with
  | (uu____5518,uu____5519,peek1,uu____5521,uu____5522) -> peek1
let insert_record_cache: record_or_dc -> Prims.unit =
  let uu____5550 = record_cache_aux in
  match uu____5550 with
  | (uu____5575,uu____5576,uu____5577,insert,uu____5579) -> insert
let commit_record_cache: Prims.unit -> Prims.unit =
  let uu____5607 = record_cache_aux in
  match uu____5607 with
  | (uu____5632,uu____5633,uu____5634,uu____5635,commit1) -> commit1
let extract_record:
  env ->
    scope_mod Prims.list FStar_ST.ref ->
      FStar_Syntax_Syntax.sigelt -> Prims.unit
  =
  fun e  ->
    fun new_globs  ->
      fun se  ->
        match se.FStar_Syntax_Syntax.sigel with
        | FStar_Syntax_Syntax.Sig_bundle (sigs,uu____5684) ->
            let is_record =
              FStar_Util.for_some
                (fun uu___170_5700  ->
                   match uu___170_5700 with
                   | FStar_Syntax_Syntax.RecordType uu____5701 -> true
                   | FStar_Syntax_Syntax.RecordConstructor uu____5710 -> true
                   | uu____5719 -> false) in
            let find_dc dc =
              FStar_All.pipe_right sigs
                (FStar_Util.find_opt
                   (fun uu___171_5741  ->
                      match uu___171_5741 with
                      | {
                          FStar_Syntax_Syntax.sigel =
                            FStar_Syntax_Syntax.Sig_datacon
                            (lid,uu____5743,uu____5744,uu____5745,uu____5746,uu____5747);
                          FStar_Syntax_Syntax.sigrng = uu____5748;
                          FStar_Syntax_Syntax.sigquals = uu____5749;
                          FStar_Syntax_Syntax.sigmeta = uu____5750;
                          FStar_Syntax_Syntax.sigattrs = uu____5751;_} ->
                          FStar_Ident.lid_equals dc lid
                      | uu____5760 -> false)) in
            FStar_All.pipe_right sigs
              (FStar_List.iter
                 (fun uu___172_5795  ->
                    match uu___172_5795 with
                    | {
                        FStar_Syntax_Syntax.sigel =
                          FStar_Syntax_Syntax.Sig_inductive_typ
                          (typename,univs1,parms,uu____5799,uu____5800,dc::[]);
                        FStar_Syntax_Syntax.sigrng = uu____5802;
                        FStar_Syntax_Syntax.sigquals = typename_quals;
                        FStar_Syntax_Syntax.sigmeta = uu____5804;
                        FStar_Syntax_Syntax.sigattrs = uu____5805;_} ->
                        let uu____5816 =
                          let uu____5817 = find_dc dc in
                          FStar_All.pipe_left FStar_Util.must uu____5817 in
                        (match uu____5816 with
                         | {
                             FStar_Syntax_Syntax.sigel =
                               FStar_Syntax_Syntax.Sig_datacon
                               (constrname,uu____5823,t,uu____5825,uu____5826,uu____5827);
                             FStar_Syntax_Syntax.sigrng = uu____5828;
                             FStar_Syntax_Syntax.sigquals = uu____5829;
                             FStar_Syntax_Syntax.sigmeta = uu____5830;
                             FStar_Syntax_Syntax.sigattrs = uu____5831;_} ->
                             let uu____5840 =
                               FStar_Syntax_Util.arrow_formals t in
                             (match uu____5840 with
                              | (formals,uu____5854) ->
                                  let is_rec = is_record typename_quals in
                                  let formals' =
                                    FStar_All.pipe_right formals
                                      (FStar_List.collect
                                         (fun uu____5903  ->
                                            match uu____5903 with
                                            | (x,q) ->
                                                let uu____5916 =
                                                  (FStar_Syntax_Syntax.is_null_bv
                                                     x)
                                                    ||
                                                    (is_rec &&
                                                       (FStar_Syntax_Syntax.is_implicit
                                                          q)) in
                                                if uu____5916
                                                then []
                                                else [(x, q)])) in
                                  let fields' =
                                    FStar_All.pipe_right formals'
                                      (FStar_List.map
                                         (fun uu____5973  ->
                                            match uu____5973 with
                                            | (x,q) ->
                                                let uu____5986 =
                                                  if is_rec
                                                  then
                                                    FStar_Syntax_Util.unmangle_field_name
                                                      x.FStar_Syntax_Syntax.ppname
                                                  else
                                                    x.FStar_Syntax_Syntax.ppname in
                                                (uu____5986,
                                                  (x.FStar_Syntax_Syntax.sort)))) in
                                  let fields = fields' in
                                  let record =
                                    {
                                      typename;
                                      constrname =
                                        (constrname.FStar_Ident.ident);
                                      parms;
                                      fields;
                                      is_private_or_abstract =
                                        ((FStar_List.contains
                                            FStar_Syntax_Syntax.Private
                                            typename_quals)
                                           ||
                                           (FStar_List.contains
                                              FStar_Syntax_Syntax.Abstract
                                              typename_quals));
                                      is_record = is_rec
                                    } in
                                  ((let uu____6001 =
                                      let uu____6004 =
                                        FStar_ST.read new_globs in
                                      (Record_or_dc record) :: uu____6004 in
                                    FStar_ST.write new_globs uu____6001);
                                   (match () with
                                    | () ->
                                        ((let add_field uu____6025 =
                                            match uu____6025 with
                                            | (id,uu____6033) ->
                                                let modul =
                                                  let uu____6039 =
                                                    FStar_Ident.lid_of_ids
                                                      constrname.FStar_Ident.ns in
                                                  uu____6039.FStar_Ident.str in
                                                let uu____6040 =
                                                  get_exported_id_set e modul in
                                                (match uu____6040 with
                                                 | FStar_Pervasives_Native.Some
                                                     my_ex ->
                                                     let my_exported_ids =
                                                       my_ex
                                                         Exported_id_field in
                                                     ((let uu____6061 =
                                                         let uu____6062 =
                                                           FStar_ST.read
                                                             my_exported_ids in
                                                         FStar_Util.set_add
                                                           id.FStar_Ident.idText
                                                           uu____6062 in
                                                       FStar_ST.write
                                                         my_exported_ids
                                                         uu____6061);
                                                      (match () with
                                                       | () ->
                                                           let projname =
                                                             let uu____6070 =
                                                               let uu____6071
                                                                 =
                                                                 FStar_Syntax_Util.mk_field_projector_name_from_ident
                                                                   constrname
                                                                   id in
                                                               uu____6071.FStar_Ident.ident in
                                                             uu____6070.FStar_Ident.idText in
                                                           let uu____6073 =
                                                             let uu____6074 =
                                                               FStar_ST.read
                                                                 my_exported_ids in
                                                             FStar_Util.set_add
                                                               projname
                                                               uu____6074 in
                                                           FStar_ST.write
                                                             my_exported_ids
                                                             uu____6073))
                                                 | FStar_Pervasives_Native.None
                                                      -> ()) in
                                          FStar_List.iter add_field fields');
                                         (match () with
                                          | () -> insert_record_cache record)))))
                         | uu____6091 -> ())
                    | uu____6092 -> ()))
        | uu____6093 -> ()
let try_lookup_record_or_dc_by_field_name:
  env -> FStar_Ident.lident -> record_or_dc FStar_Pervasives_Native.option =
  fun env  ->
    fun fieldname  ->
      let find_in_cache fieldname1 =
        let uu____6110 =
          ((fieldname1.FStar_Ident.ns), (fieldname1.FStar_Ident.ident)) in
        match uu____6110 with
        | (ns,id) ->
            let uu____6127 = peek_record_cache () in
            FStar_Util.find_map uu____6127
              (fun record  ->
                 let uu____6133 =
                   find_in_record ns id record (fun r  -> Cont_ok r) in
                 option_of_cont
                   (fun uu____6139  -> FStar_Pervasives_Native.None)
                   uu____6133) in
      resolve_in_open_namespaces'' env fieldname Exported_id_field
        (fun uu____6141  -> Cont_ignore) (fun uu____6143  -> Cont_ignore)
        (fun r  -> Cont_ok r)
        (fun fn  ->
           let uu____6149 = find_in_cache fn in
           cont_of_option Cont_ignore uu____6149)
        (fun k  -> fun uu____6155  -> k)
let try_lookup_record_by_field_name:
  env -> FStar_Ident.lident -> record_or_dc FStar_Pervasives_Native.option =
  fun env  ->
    fun fieldname  ->
      let uu____6168 = try_lookup_record_or_dc_by_field_name env fieldname in
      match uu____6168 with
      | FStar_Pervasives_Native.Some r when r.is_record ->
          FStar_Pervasives_Native.Some r
      | uu____6174 -> FStar_Pervasives_Native.None
let belongs_to_record:
  env -> FStar_Ident.lident -> record_or_dc -> Prims.bool =
  fun env  ->
    fun lid  ->
      fun record  ->
        let uu____6189 = try_lookup_record_by_field_name env lid in
        match uu____6189 with
        | FStar_Pervasives_Native.Some record' when
            let uu____6193 =
              let uu____6194 =
                FStar_Ident.path_of_ns (record.typename).FStar_Ident.ns in
              FStar_Ident.text_of_path uu____6194 in
            let uu____6197 =
              let uu____6198 =
                FStar_Ident.path_of_ns (record'.typename).FStar_Ident.ns in
              FStar_Ident.text_of_path uu____6198 in
            uu____6193 = uu____6197 ->
            let uu____6201 =
              find_in_record (record.typename).FStar_Ident.ns
                lid.FStar_Ident.ident record (fun uu____6205  -> Cont_ok ()) in
            (match uu____6201 with
             | Cont_ok uu____6206 -> true
             | uu____6207 -> false)
        | uu____6210 -> false
let try_lookup_dc_by_field_name:
  env ->
    FStar_Ident.lident ->
      (FStar_Ident.lident,Prims.bool) FStar_Pervasives_Native.tuple2
        FStar_Pervasives_Native.option
  =
  fun env  ->
    fun fieldname  ->
      let uu____6227 = try_lookup_record_or_dc_by_field_name env fieldname in
      match uu____6227 with
      | FStar_Pervasives_Native.Some r ->
          let uu____6237 =
            let uu____6242 =
              let uu____6243 =
                FStar_Ident.lid_of_ids
                  (FStar_List.append (r.typename).FStar_Ident.ns
                     [r.constrname]) in
              FStar_Ident.set_lid_range uu____6243
                (FStar_Ident.range_of_lid fieldname) in
            (uu____6242, (r.is_record)) in
          FStar_Pervasives_Native.Some uu____6237
      | uu____6248 -> FStar_Pervasives_Native.None
let string_set_ref_new:
  Prims.unit -> Prims.string FStar_Util.set FStar_ST.ref =
  fun uu____6263  ->
    let uu____6264 =
      FStar_Util.new_set FStar_Util.compare FStar_Util.hashcode in
    FStar_Util.mk_ref uu____6264
let exported_id_set_new:
  Prims.unit -> exported_id_kind -> Prims.string FStar_Util.set FStar_ST.ref
  =
  fun uu____6279  ->
    let term_type_set = string_set_ref_new () in
    let field_set = string_set_ref_new () in
    fun uu___173_6290  ->
      match uu___173_6290 with
      | Exported_id_term_type  -> term_type_set
      | Exported_id_field  -> field_set
let unique:
  Prims.bool -> Prims.bool -> env -> FStar_Ident.lident -> Prims.bool =
  fun any_val  ->
    fun exclude_if  ->
      fun env  ->
        fun lid  ->
          let filter_scope_mods uu___174_6316 =
            match uu___174_6316 with
            | Rec_binding uu____6317 -> true
            | uu____6318 -> false in
          let this_env =
            let uu___185_6320 = env in
            let uu____6321 =
              FStar_List.filter filter_scope_mods env.scope_mods in
            {
              curmodule = (uu___185_6320.curmodule);
              curmonad = (uu___185_6320.curmonad);
              modules = (uu___185_6320.modules);
              scope_mods = uu____6321;
              exported_ids = empty_exported_id_smap;
              trans_exported_ids = (uu___185_6320.trans_exported_ids);
              includes = empty_include_smap;
              sigaccum = (uu___185_6320.sigaccum);
              sigmap = (uu___185_6320.sigmap);
              iface = (uu___185_6320.iface);
              admitted_iface = (uu___185_6320.admitted_iface);
              expect_typ = (uu___185_6320.expect_typ);
              docs = (uu___185_6320.docs);
              remaining_iface_decls = (uu___185_6320.remaining_iface_decls);
              syntax_only = (uu___185_6320.syntax_only)
            } in
          let uu____6324 = try_lookup_lid' any_val exclude_if this_env lid in
          match uu____6324 with
          | FStar_Pervasives_Native.None  -> true
          | FStar_Pervasives_Native.Some uu____6335 -> false
let push_scope_mod: env -> scope_mod -> env =
  fun env  ->
    fun scope_mod  ->
      let uu___186_6352 = env in
      {
        curmodule = (uu___186_6352.curmodule);
        curmonad = (uu___186_6352.curmonad);
        modules = (uu___186_6352.modules);
        scope_mods = (scope_mod :: (env.scope_mods));
        exported_ids = (uu___186_6352.exported_ids);
        trans_exported_ids = (uu___186_6352.trans_exported_ids);
        includes = (uu___186_6352.includes);
        sigaccum = (uu___186_6352.sigaccum);
        sigmap = (uu___186_6352.sigmap);
        iface = (uu___186_6352.iface);
        admitted_iface = (uu___186_6352.admitted_iface);
        expect_typ = (uu___186_6352.expect_typ);
        docs = (uu___186_6352.docs);
        remaining_iface_decls = (uu___186_6352.remaining_iface_decls);
        syntax_only = (uu___186_6352.syntax_only)
      }
let push_bv':
  env ->
    FStar_Ident.ident ->
      Prims.bool ->
        (env,FStar_Syntax_Syntax.bv) FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun x  ->
      fun is_mutable  ->
        let bv =
          FStar_Syntax_Syntax.gen_bv x.FStar_Ident.idText
            (FStar_Pervasives_Native.Some (x.FStar_Ident.idRange))
            FStar_Syntax_Syntax.tun in
        ((push_scope_mod env (Local_binding (x, bv, is_mutable))), bv)
let push_bv_mutable:
  env ->
    FStar_Ident.ident ->
      (env,FStar_Syntax_Syntax.bv) FStar_Pervasives_Native.tuple2
  = fun env  -> fun x  -> push_bv' env x true
let push_bv:
  env ->
    FStar_Ident.ident ->
      (env,FStar_Syntax_Syntax.bv) FStar_Pervasives_Native.tuple2
  = fun env  -> fun x  -> push_bv' env x false
let push_top_level_rec_binding:
  env -> FStar_Ident.ident -> FStar_Syntax_Syntax.delta_depth -> env =
  fun env  ->
    fun x  ->
      fun dd  ->
        let l = qualify env x in
        let uu____6407 =
          (unique false true env l) || (FStar_Options.interactive ()) in
        if uu____6407
        then push_scope_mod env (Rec_binding (x, l, dd))
        else
          raise
            (FStar_Errors.Error
               ((Prims.strcat "Duplicate top-level names " l.FStar_Ident.str),
                 (FStar_Ident.range_of_lid l)))
let push_sigelt: env -> FStar_Syntax_Syntax.sigelt -> env =
  fun env  ->
    fun s  ->
      let err1 l =
        let sopt = FStar_Util.smap_try_find (sigmap env) l.FStar_Ident.str in
        let r =
          match sopt with
          | FStar_Pervasives_Native.Some (se,uu____6434) ->
              let uu____6439 =
                FStar_Util.find_opt (FStar_Ident.lid_equals l)
                  (FStar_Syntax_Util.lids_of_sigelt se) in
              (match uu____6439 with
               | FStar_Pervasives_Native.Some l1 ->
                   FStar_All.pipe_left FStar_Range.string_of_range
                     (FStar_Ident.range_of_lid l1)
               | FStar_Pervasives_Native.None  -> "<unknown>")
          | FStar_Pervasives_Native.None  -> "<unknown>" in
        let uu____6447 =
          let uu____6448 =
            let uu____6453 =
              FStar_Util.format2
                "Duplicate top-level names [%s]; previously declared at %s"
                (FStar_Ident.text_of_lid l) r in
            (uu____6453, (FStar_Ident.range_of_lid l)) in
          FStar_Errors.Error uu____6448 in
        raise uu____6447 in
      let globals = FStar_Util.mk_ref env.scope_mods in
      let env1 =
        let uu____6462 =
          match s.FStar_Syntax_Syntax.sigel with
          | FStar_Syntax_Syntax.Sig_let uu____6471 -> (false, true)
          | FStar_Syntax_Syntax.Sig_bundle uu____6478 -> (true, true)
          | uu____6487 -> (false, false) in
        match uu____6462 with
        | (any_val,exclude_if) ->
            let lids = FStar_Syntax_Util.lids_of_sigelt s in
            let uu____6493 =
              FStar_Util.find_map lids
                (fun l  ->
                   let uu____6499 =
                     let uu____6500 = unique any_val exclude_if env l in
                     Prims.op_Negation uu____6500 in
                   if uu____6499
                   then FStar_Pervasives_Native.Some l
                   else FStar_Pervasives_Native.None) in
            (match uu____6493 with
             | FStar_Pervasives_Native.Some l when
                 let uu____6505 = FStar_Options.interactive () in
                 Prims.op_Negation uu____6505 -> err1 l
             | uu____6506 ->
                 (extract_record env globals s;
                  (let uu___187_6512 = env in
                   {
                     curmodule = (uu___187_6512.curmodule);
                     curmonad = (uu___187_6512.curmonad);
                     modules = (uu___187_6512.modules);
                     scope_mods = (uu___187_6512.scope_mods);
                     exported_ids = (uu___187_6512.exported_ids);
                     trans_exported_ids = (uu___187_6512.trans_exported_ids);
                     includes = (uu___187_6512.includes);
                     sigaccum = (s :: (env.sigaccum));
                     sigmap = (uu___187_6512.sigmap);
                     iface = (uu___187_6512.iface);
                     admitted_iface = (uu___187_6512.admitted_iface);
                     expect_typ = (uu___187_6512.expect_typ);
                     docs = (uu___187_6512.docs);
                     remaining_iface_decls =
                       (uu___187_6512.remaining_iface_decls);
                     syntax_only = (uu___187_6512.syntax_only)
                   }))) in
      let env2 =
        let uu___188_6514 = env1 in
        let uu____6515 = FStar_ST.read globals in
        {
          curmodule = (uu___188_6514.curmodule);
          curmonad = (uu___188_6514.curmonad);
          modules = (uu___188_6514.modules);
          scope_mods = uu____6515;
          exported_ids = (uu___188_6514.exported_ids);
          trans_exported_ids = (uu___188_6514.trans_exported_ids);
          includes = (uu___188_6514.includes);
          sigaccum = (uu___188_6514.sigaccum);
          sigmap = (uu___188_6514.sigmap);
          iface = (uu___188_6514.iface);
          admitted_iface = (uu___188_6514.admitted_iface);
          expect_typ = (uu___188_6514.expect_typ);
          docs = (uu___188_6514.docs);
          remaining_iface_decls = (uu___188_6514.remaining_iface_decls);
          syntax_only = (uu___188_6514.syntax_only)
        } in
      let uu____6522 =
        match s.FStar_Syntax_Syntax.sigel with
        | FStar_Syntax_Syntax.Sig_bundle (ses,uu____6548) ->
            let uu____6557 =
              FStar_List.map
                (fun se  -> ((FStar_Syntax_Util.lids_of_sigelt se), se)) ses in
            (env2, uu____6557)
        | uu____6584 -> (env2, [((FStar_Syntax_Util.lids_of_sigelt s), s)]) in
      match uu____6522 with
      | (env3,lss) ->
          (FStar_All.pipe_right lss
             (FStar_List.iter
                (fun uu____6643  ->
                   match uu____6643 with
                   | (lids,se) ->
                       FStar_All.pipe_right lids
                         (FStar_List.iter
                            (fun lid  ->
                               (let uu____6664 =
                                  let uu____6667 = FStar_ST.read globals in
                                  (Top_level_def (lid.FStar_Ident.ident)) ::
                                    uu____6667 in
                                FStar_ST.write globals uu____6664);
                               (match () with
                                | () ->
                                    let modul =
                                      let uu____6679 =
                                        FStar_Ident.lid_of_ids
                                          lid.FStar_Ident.ns in
                                      uu____6679.FStar_Ident.str in
                                    ((let uu____6681 =
                                        get_exported_id_set env3 modul in
                                      match uu____6681 with
                                      | FStar_Pervasives_Native.Some f ->
                                          let my_exported_ids =
                                            f Exported_id_term_type in
                                          let uu____6701 =
                                            let uu____6702 =
                                              FStar_ST.read my_exported_ids in
                                            FStar_Util.set_add
                                              (lid.FStar_Ident.ident).FStar_Ident.idText
                                              uu____6702 in
                                          FStar_ST.write my_exported_ids
                                            uu____6701
                                      | FStar_Pervasives_Native.None  -> ());
                                     (match () with
                                      | () ->
                                          FStar_Util.smap_add (sigmap env3)
                                            lid.FStar_Ident.str
                                            (se,
                                              (env3.iface &&
                                                 (Prims.op_Negation
                                                    env3.admitted_iface))))))))));
           (let env4 =
              let uu___189_6718 = env3 in
              let uu____6719 = FStar_ST.read globals in
              {
                curmodule = (uu___189_6718.curmodule);
                curmonad = (uu___189_6718.curmonad);
                modules = (uu___189_6718.modules);
                scope_mods = uu____6719;
                exported_ids = (uu___189_6718.exported_ids);
                trans_exported_ids = (uu___189_6718.trans_exported_ids);
                includes = (uu___189_6718.includes);
                sigaccum = (uu___189_6718.sigaccum);
                sigmap = (uu___189_6718.sigmap);
                iface = (uu___189_6718.iface);
                admitted_iface = (uu___189_6718.admitted_iface);
                expect_typ = (uu___189_6718.expect_typ);
                docs = (uu___189_6718.docs);
                remaining_iface_decls = (uu___189_6718.remaining_iface_decls);
                syntax_only = (uu___189_6718.syntax_only)
              } in
            env4))
let push_namespace: env -> FStar_Ident.lident -> env =
  fun env  ->
    fun ns  ->
      let uu____6734 =
        let uu____6739 = resolve_module_name env ns false in
        match uu____6739 with
        | FStar_Pervasives_Native.None  ->
            let modules = env.modules in
            let uu____6753 =
              FStar_All.pipe_right modules
                (FStar_Util.for_some
                   (fun uu____6767  ->
                      match uu____6767 with
                      | (m,uu____6773) ->
                          FStar_Util.starts_with
                            (Prims.strcat (FStar_Ident.text_of_lid m) ".")
                            (Prims.strcat (FStar_Ident.text_of_lid ns) "."))) in
            if uu____6753
            then (ns, Open_namespace)
            else
              (let uu____6779 =
                 let uu____6780 =
                   let uu____6785 =
                     FStar_Util.format1 "Namespace %s cannot be found"
                       (FStar_Ident.text_of_lid ns) in
                   (uu____6785, (FStar_Ident.range_of_lid ns)) in
                 FStar_Errors.Error uu____6780 in
               raise uu____6779)
        | FStar_Pervasives_Native.Some ns' ->
            (fail_if_curmodule env ns ns'; (ns', Open_module)) in
      match uu____6734 with
      | (ns',kd) -> push_scope_mod env (Open_module_or_namespace (ns', kd))
let push_include: env -> FStar_Ident.lident -> env =
  fun env  ->
    fun ns  ->
      let ns0 = ns in
      let uu____6803 = resolve_module_name env ns false in
      match uu____6803 with
      | FStar_Pervasives_Native.Some ns1 ->
          (fail_if_curmodule env ns0 ns1;
           (let env1 =
              push_scope_mod env
                (Open_module_or_namespace (ns1, Open_module)) in
            let curmod =
              let uu____6810 = current_module env1 in
              uu____6810.FStar_Ident.str in
            (let uu____6812 = FStar_Util.smap_try_find env1.includes curmod in
             match uu____6812 with
             | FStar_Pervasives_Native.None  -> ()
             | FStar_Pervasives_Native.Some incl ->
                 let uu____6836 =
                   let uu____6839 = FStar_ST.read incl in ns1 :: uu____6839 in
                 FStar_ST.write incl uu____6836);
            (match () with
             | () ->
                 let uu____6850 =
                   get_trans_exported_id_set env1 ns1.FStar_Ident.str in
                 (match uu____6850 with
                  | FStar_Pervasives_Native.Some ns_trans_exports ->
                      ((let uu____6867 =
                          let uu____6884 = get_exported_id_set env1 curmod in
                          let uu____6891 =
                            get_trans_exported_id_set env1 curmod in
                          (uu____6884, uu____6891) in
                        match uu____6867 with
                        | (FStar_Pervasives_Native.Some
                           cur_exports,FStar_Pervasives_Native.Some
                           cur_trans_exports) ->
                            let update_exports k =
                              let ns_ex =
                                let uu____6945 = ns_trans_exports k in
                                FStar_ST.read uu____6945 in
                              let ex = cur_exports k in
                              (let uu____6956 =
                                 let uu____6957 = FStar_ST.read ex in
                                 FStar_Util.set_difference uu____6957 ns_ex in
                               FStar_ST.write ex uu____6956);
                              (match () with
                               | () ->
                                   let trans_ex = cur_trans_exports k in
                                   let uu____6969 =
                                     let uu____6970 = FStar_ST.read trans_ex in
                                     FStar_Util.set_union uu____6970 ns_ex in
                                   FStar_ST.write trans_ex uu____6969) in
                            FStar_List.iter update_exports
                              all_exported_id_kinds
                        | uu____6977 -> ());
                       (match () with | () -> env1))
                  | FStar_Pervasives_Native.None  ->
                      let uu____6998 =
                        let uu____6999 =
                          let uu____7004 =
                            FStar_Util.format1
                              "include: Module %s was not prepared"
                              ns1.FStar_Ident.str in
                          (uu____7004, (FStar_Ident.range_of_lid ns1)) in
                        FStar_Errors.Error uu____6999 in
                      raise uu____6998))))
      | uu____7005 ->
          let uu____7008 =
            let uu____7009 =
              let uu____7014 =
                FStar_Util.format1 "include: Module %s cannot be found"
                  ns.FStar_Ident.str in
              (uu____7014, (FStar_Ident.range_of_lid ns)) in
            FStar_Errors.Error uu____7009 in
          raise uu____7008
let push_module_abbrev: env -> FStar_Ident.ident -> FStar_Ident.lident -> env
  =
  fun env  ->
    fun x  ->
      fun l  ->
        let uu____7027 = module_is_defined env l in
        if uu____7027
        then
          (fail_if_curmodule env l l;
           push_scope_mod env (Module_abbrev (x, l)))
        else
          (let uu____7030 =
             let uu____7031 =
               let uu____7036 =
                 FStar_Util.format1 "Module %s cannot be found"
                   (FStar_Ident.text_of_lid l) in
               (uu____7036, (FStar_Ident.range_of_lid l)) in
             FStar_Errors.Error uu____7031 in
           raise uu____7030)
let push_doc:
  env ->
    FStar_Ident.lident ->
      FStar_Parser_AST.fsdoc FStar_Pervasives_Native.option -> env
  =
  fun env  ->
    fun l  ->
      fun doc_opt  ->
        match doc_opt with
        | FStar_Pervasives_Native.None  -> env
        | FStar_Pervasives_Native.Some doc1 ->
            ((let uu____7055 =
                FStar_Util.smap_try_find env.docs l.FStar_Ident.str in
              match uu____7055 with
              | FStar_Pervasives_Native.None  -> ()
              | FStar_Pervasives_Native.Some old_doc ->
                  let uu____7059 =
                    let uu____7060 = FStar_Ident.string_of_lid l in
                    let uu____7061 = FStar_Parser_AST.string_of_fsdoc old_doc in
                    let uu____7062 = FStar_Parser_AST.string_of_fsdoc doc1 in
                    FStar_Util.format3
                      "Overwriting doc of %s; old doc was [%s]; new doc are [%s]"
                      uu____7060 uu____7061 uu____7062 in
                  FStar_Errors.warn (FStar_Ident.range_of_lid l) uu____7059);
             FStar_Util.smap_add env.docs l.FStar_Ident.str doc1;
             env)
let check_admits: env -> Prims.unit =
  fun env  ->
    FStar_All.pipe_right env.sigaccum
      (FStar_List.iter
         (fun se  ->
            match se.FStar_Syntax_Syntax.sigel with
            | FStar_Syntax_Syntax.Sig_declare_typ (l,u,t) ->
                let uu____7079 = try_lookup_lid env l in
                (match uu____7079 with
                 | FStar_Pervasives_Native.None  ->
                     ((let uu____7091 =
                         let uu____7092 = FStar_Options.interactive () in
                         Prims.op_Negation uu____7092 in
                       if uu____7091
                       then
                         let uu____7093 =
                           let uu____7094 =
                             FStar_Range.string_of_range
                               (FStar_Ident.range_of_lid l) in
                           let uu____7095 =
                             FStar_Syntax_Print.lid_to_string l in
                           FStar_Util.format2
                             "%s: Warning: Admitting %s without a definition\n"
                             uu____7094 uu____7095 in
                         FStar_Util.print_string uu____7093
                       else ());
                      (let quals = FStar_Syntax_Syntax.Assumption ::
                         (se.FStar_Syntax_Syntax.sigquals) in
                       FStar_Util.smap_add (sigmap env) l.FStar_Ident.str
                         ((let uu___190_7105 = se in
                           {
                             FStar_Syntax_Syntax.sigel =
                               (uu___190_7105.FStar_Syntax_Syntax.sigel);
                             FStar_Syntax_Syntax.sigrng =
                               (uu___190_7105.FStar_Syntax_Syntax.sigrng);
                             FStar_Syntax_Syntax.sigquals = quals;
                             FStar_Syntax_Syntax.sigmeta =
                               (uu___190_7105.FStar_Syntax_Syntax.sigmeta);
                             FStar_Syntax_Syntax.sigattrs =
                               (uu___190_7105.FStar_Syntax_Syntax.sigattrs)
                           }), false)))
                 | FStar_Pervasives_Native.Some uu____7106 -> ())
            | uu____7115 -> ()))
let finish: env -> FStar_Syntax_Syntax.modul -> env =
  fun env  ->
    fun modul  ->
      FStar_All.pipe_right modul.FStar_Syntax_Syntax.declarations
        (FStar_List.iter
           (fun se  ->
              let quals = se.FStar_Syntax_Syntax.sigquals in
              match se.FStar_Syntax_Syntax.sigel with
              | FStar_Syntax_Syntax.Sig_bundle (ses,uu____7134) ->
                  if
                    (FStar_List.contains FStar_Syntax_Syntax.Private quals)
                      ||
                      (FStar_List.contains FStar_Syntax_Syntax.Abstract quals)
                  then
                    FStar_All.pipe_right ses
                      (FStar_List.iter
                         (fun se1  ->
                            match se1.FStar_Syntax_Syntax.sigel with
                            | FStar_Syntax_Syntax.Sig_datacon
                                (lid,uu____7154,uu____7155,uu____7156,uu____7157,uu____7158)
                                ->
                                FStar_Util.smap_remove (sigmap env)
                                  lid.FStar_Ident.str
                            | uu____7167 -> ()))
                  else ()
              | FStar_Syntax_Syntax.Sig_declare_typ
                  (lid,uu____7170,uu____7171) ->
                  if FStar_List.contains FStar_Syntax_Syntax.Private quals
                  then
                    FStar_Util.smap_remove (sigmap env) lid.FStar_Ident.str
                  else ()
              | FStar_Syntax_Syntax.Sig_let ((uu____7177,lbs),uu____7179) ->
                  (if
                     (FStar_List.contains FStar_Syntax_Syntax.Private quals)
                       ||
                       (FStar_List.contains FStar_Syntax_Syntax.Abstract
                          quals)
                   then
                     FStar_All.pipe_right lbs
                       (FStar_List.iter
                          (fun lb  ->
                             let uu____7200 =
                               let uu____7201 =
                                 let uu____7202 =
                                   let uu____7205 =
                                     FStar_Util.right
                                       lb.FStar_Syntax_Syntax.lbname in
                                   uu____7205.FStar_Syntax_Syntax.fv_name in
                                 uu____7202.FStar_Syntax_Syntax.v in
                               uu____7201.FStar_Ident.str in
                             FStar_Util.smap_remove (sigmap env) uu____7200))
                   else ();
                   if
                     (FStar_List.contains FStar_Syntax_Syntax.Abstract quals)
                       &&
                       (Prims.op_Negation
                          (FStar_List.contains FStar_Syntax_Syntax.Private
                             quals))
                   then
                     FStar_All.pipe_right lbs
                       (FStar_List.iter
                          (fun lb  ->
                             let lid =
                               let uu____7219 =
                                 let uu____7222 =
                                   FStar_Util.right
                                     lb.FStar_Syntax_Syntax.lbname in
                                 uu____7222.FStar_Syntax_Syntax.fv_name in
                               uu____7219.FStar_Syntax_Syntax.v in
                             let quals1 = FStar_Syntax_Syntax.Assumption ::
                               quals in
                             let decl =
                               let uu___191_7227 = se in
                               {
                                 FStar_Syntax_Syntax.sigel =
                                   (FStar_Syntax_Syntax.Sig_declare_typ
                                      (lid, (lb.FStar_Syntax_Syntax.lbunivs),
                                        (lb.FStar_Syntax_Syntax.lbtyp)));
                                 FStar_Syntax_Syntax.sigrng =
                                   (uu___191_7227.FStar_Syntax_Syntax.sigrng);
                                 FStar_Syntax_Syntax.sigquals = quals1;
                                 FStar_Syntax_Syntax.sigmeta =
                                   (uu___191_7227.FStar_Syntax_Syntax.sigmeta);
                                 FStar_Syntax_Syntax.sigattrs =
                                   (uu___191_7227.FStar_Syntax_Syntax.sigattrs)
                               } in
                             FStar_Util.smap_add (sigmap env)
                               lid.FStar_Ident.str (decl, false)))
                   else ())
              | uu____7237 -> ()));
      (let curmod =
         let uu____7239 = current_module env in uu____7239.FStar_Ident.str in
       (let uu____7241 =
          let uu____7258 = get_exported_id_set env curmod in
          let uu____7265 = get_trans_exported_id_set env curmod in
          (uu____7258, uu____7265) in
        match uu____7241 with
        | (FStar_Pervasives_Native.Some cur_ex,FStar_Pervasives_Native.Some
           cur_trans_ex) ->
            let update_exports eikind =
              let cur_ex_set =
                let uu____7319 = cur_ex eikind in FStar_ST.read uu____7319 in
              let cur_trans_ex_set_ref = cur_trans_ex eikind in
              let uu____7329 =
                let uu____7330 = FStar_ST.read cur_trans_ex_set_ref in
                FStar_Util.set_union cur_ex_set uu____7330 in
              FStar_ST.write cur_trans_ex_set_ref uu____7329 in
            FStar_List.iter update_exports all_exported_id_kinds
        | uu____7337 -> ());
       (match () with
        | () ->
            (filter_record_cache ();
             (match () with
              | () ->
                  let uu___192_7355 = env in
                  {
                    curmodule = FStar_Pervasives_Native.None;
                    curmonad = (uu___192_7355.curmonad);
                    modules = (((modul.FStar_Syntax_Syntax.name), modul) ::
                      (env.modules));
                    scope_mods = [];
                    exported_ids = (uu___192_7355.exported_ids);
                    trans_exported_ids = (uu___192_7355.trans_exported_ids);
                    includes = (uu___192_7355.includes);
                    sigaccum = [];
                    sigmap = (uu___192_7355.sigmap);
                    iface = (uu___192_7355.iface);
                    admitted_iface = (uu___192_7355.admitted_iface);
                    expect_typ = (uu___192_7355.expect_typ);
                    docs = (uu___192_7355.docs);
                    remaining_iface_decls =
                      (uu___192_7355.remaining_iface_decls);
                    syntax_only = (uu___192_7355.syntax_only)
                  }))))
let stack: env Prims.list FStar_ST.ref = FStar_Util.mk_ref []
let push: env -> env =
  fun env  ->
    push_record_cache ();
    (let uu____7373 =
       let uu____7376 = FStar_ST.read stack in env :: uu____7376 in
     FStar_ST.write stack uu____7373);
    (let uu___193_7383 = env in
     let uu____7384 = FStar_Util.smap_copy (sigmap env) in
     let uu____7395 = FStar_Util.smap_copy env.docs in
     {
       curmodule = (uu___193_7383.curmodule);
       curmonad = (uu___193_7383.curmonad);
       modules = (uu___193_7383.modules);
       scope_mods = (uu___193_7383.scope_mods);
       exported_ids = (uu___193_7383.exported_ids);
       trans_exported_ids = (uu___193_7383.trans_exported_ids);
       includes = (uu___193_7383.includes);
       sigaccum = (uu___193_7383.sigaccum);
       sigmap = uu____7384;
       iface = (uu___193_7383.iface);
       admitted_iface = (uu___193_7383.admitted_iface);
       expect_typ = (uu___193_7383.expect_typ);
       docs = uu____7395;
       remaining_iface_decls = (uu___193_7383.remaining_iface_decls);
       syntax_only = (uu___193_7383.syntax_only)
     })
let pop: Prims.unit -> env =
  fun uu____7401  ->
    let uu____7402 = FStar_ST.read stack in
    match uu____7402 with
    | env::tl1 -> (pop_record_cache (); FStar_ST.write stack tl1; env)
    | uu____7415 -> failwith "Impossible: Too many pops"
let commit_mark: env -> env =
  fun env  ->
    commit_record_cache ();
    (let uu____7423 = FStar_ST.read stack in
     match uu____7423 with
     | uu____7428::tl1 -> (FStar_ST.write stack tl1; env)
     | uu____7435 -> failwith "Impossible: Too many pops")
let mark: env -> env = fun x  -> push x
let reset_mark: Prims.unit -> env = fun uu____7445  -> pop ()
let export_interface: FStar_Ident.lident -> env -> env =
  fun m  ->
    fun env  ->
      let sigelt_in_m se =
        match FStar_Syntax_Util.lids_of_sigelt se with
        | l::uu____7459 -> l.FStar_Ident.nsstr = m.FStar_Ident.str
        | uu____7462 -> false in
      let sm = sigmap env in
      let env1 = pop () in
      let keys = FStar_Util.smap_keys sm in
      let sm' = sigmap env1 in
      FStar_All.pipe_right keys
        (FStar_List.iter
           (fun k  ->
              let uu____7496 = FStar_Util.smap_try_find sm' k in
              match uu____7496 with
              | FStar_Pervasives_Native.Some (se,true ) when sigelt_in_m se
                  ->
                  (FStar_Util.smap_remove sm' k;
                   (let se1 =
                      match se.FStar_Syntax_Syntax.sigel with
                      | FStar_Syntax_Syntax.Sig_declare_typ (l,u,t) ->
                          let uu___194_7521 = se in
                          {
                            FStar_Syntax_Syntax.sigel =
                              (uu___194_7521.FStar_Syntax_Syntax.sigel);
                            FStar_Syntax_Syntax.sigrng =
                              (uu___194_7521.FStar_Syntax_Syntax.sigrng);
                            FStar_Syntax_Syntax.sigquals =
                              (FStar_Syntax_Syntax.Assumption ::
                              (se.FStar_Syntax_Syntax.sigquals));
                            FStar_Syntax_Syntax.sigmeta =
                              (uu___194_7521.FStar_Syntax_Syntax.sigmeta);
                            FStar_Syntax_Syntax.sigattrs =
                              (uu___194_7521.FStar_Syntax_Syntax.sigattrs)
                          }
                      | uu____7522 -> se in
                    FStar_Util.smap_add sm' k (se1, false)))
              | uu____7527 -> ()));
      env1
let finish_module_or_interface: env -> FStar_Syntax_Syntax.modul -> env =
  fun env  ->
    fun modul  ->
      if Prims.op_Negation modul.FStar_Syntax_Syntax.is_interface
      then check_admits env
      else ();
      finish env modul
let prepare_module_or_interface:
  Prims.bool ->
    Prims.bool ->
      env ->
        FStar_Ident.lident -> (env,Prims.bool) FStar_Pervasives_Native.tuple2
  =
  fun intf  ->
    fun admitted  ->
      fun env  ->
        fun mname  ->
          let prep env1 =
            let filename =
              FStar_Util.strcat (FStar_Ident.text_of_lid mname) ".fst" in
            let auto_open = FStar_Parser_Dep.hard_coded_dependencies filename in
            let auto_open1 =
              let convert_kind uu___175_7586 =
                match uu___175_7586 with
                | FStar_Parser_Dep.Open_namespace  -> Open_namespace
                | FStar_Parser_Dep.Open_module  -> Open_module in
              FStar_List.map
                (fun uu____7598  ->
                   match uu____7598 with
                   | (lid,kind) -> (lid, (convert_kind kind))) auto_open in
            let namespace_of_module =
              if
                (FStar_List.length mname.FStar_Ident.ns) >
                  (Prims.parse_int "0")
              then
                let uu____7622 =
                  let uu____7627 =
                    FStar_Ident.lid_of_ids mname.FStar_Ident.ns in
                  (uu____7627, Open_namespace) in
                [uu____7622]
              else [] in
            let auto_open2 =
              FStar_List.rev
                (FStar_List.append auto_open1 namespace_of_module) in
            (let uu____7657 = exported_id_set_new () in
             FStar_Util.smap_add env1.exported_ids mname.FStar_Ident.str
               uu____7657);
            (match () with
             | () ->
                 ((let uu____7661 = exported_id_set_new () in
                   FStar_Util.smap_add env1.trans_exported_ids
                     mname.FStar_Ident.str uu____7661);
                  (match () with
                   | () ->
                       ((let uu____7665 = FStar_Util.mk_ref [] in
                         FStar_Util.smap_add env1.includes
                           mname.FStar_Ident.str uu____7665);
                        (match () with
                         | () ->
                             let uu___195_7678 = env1 in
                             let uu____7679 =
                               FStar_List.map
                                 (fun x  -> Open_module_or_namespace x)
                                 auto_open2 in
                             {
                               curmodule =
                                 (FStar_Pervasives_Native.Some mname);
                               curmonad = (uu___195_7678.curmonad);
                               modules = (uu___195_7678.modules);
                               scope_mods = uu____7679;
                               exported_ids = (uu___195_7678.exported_ids);
                               trans_exported_ids =
                                 (uu___195_7678.trans_exported_ids);
                               includes = (uu___195_7678.includes);
                               sigaccum = (uu___195_7678.sigaccum);
                               sigmap = (env1.sigmap);
                               iface = intf;
                               admitted_iface = admitted;
                               expect_typ = (uu___195_7678.expect_typ);
                               docs = (uu___195_7678.docs);
                               remaining_iface_decls =
                                 (uu___195_7678.remaining_iface_decls);
                               syntax_only = (uu___195_7678.syntax_only)
                             }))))) in
          let uu____7684 =
            FStar_All.pipe_right env.modules
              (FStar_Util.find_opt
                 (fun uu____7710  ->
                    match uu____7710 with
                    | (l,uu____7716) -> FStar_Ident.lid_equals l mname)) in
          match uu____7684 with
          | FStar_Pervasives_Native.None  ->
              let uu____7725 = prep env in (uu____7725, false)
          | FStar_Pervasives_Native.Some (uu____7726,m) ->
              ((let uu____7733 =
                  (let uu____7736 = FStar_Options.interactive () in
                   Prims.op_Negation uu____7736) &&
                    ((Prims.op_Negation m.FStar_Syntax_Syntax.is_interface)
                       || intf) in
                if uu____7733
                then
                  let uu____7737 =
                    let uu____7738 =
                      let uu____7743 =
                        FStar_Util.format1
                          "Duplicate module or interface name: %s"
                          mname.FStar_Ident.str in
                      (uu____7743, (FStar_Ident.range_of_lid mname)) in
                    FStar_Errors.Error uu____7738 in
                  raise uu____7737
                else ());
               (let uu____7745 = let uu____7746 = push env in prep uu____7746 in
                (uu____7745, true)))
let enter_monad_scope: env -> FStar_Ident.ident -> env =
  fun env  ->
    fun mname  ->
      match env.curmonad with
      | FStar_Pervasives_Native.Some mname' ->
          raise
            (FStar_Errors.Error
               ((Prims.strcat "Trying to define monad "
                   (Prims.strcat mname.FStar_Ident.idText
                      (Prims.strcat ", but already in monad scope "
                         mname'.FStar_Ident.idText))),
                 (mname.FStar_Ident.idRange)))
      | FStar_Pervasives_Native.None  ->
          let uu___196_7756 = env in
          {
            curmodule = (uu___196_7756.curmodule);
            curmonad = (FStar_Pervasives_Native.Some mname);
            modules = (uu___196_7756.modules);
            scope_mods = (uu___196_7756.scope_mods);
            exported_ids = (uu___196_7756.exported_ids);
            trans_exported_ids = (uu___196_7756.trans_exported_ids);
            includes = (uu___196_7756.includes);
            sigaccum = (uu___196_7756.sigaccum);
            sigmap = (uu___196_7756.sigmap);
            iface = (uu___196_7756.iface);
            admitted_iface = (uu___196_7756.admitted_iface);
            expect_typ = (uu___196_7756.expect_typ);
            docs = (uu___196_7756.docs);
            remaining_iface_decls = (uu___196_7756.remaining_iface_decls);
            syntax_only = (uu___196_7756.syntax_only)
          }
let fail_or:
  'a .
    env ->
      (FStar_Ident.lident -> 'a FStar_Pervasives_Native.option) ->
        FStar_Ident.lident -> 'a
  =
  fun env  ->
    fun lookup  ->
      fun lid  ->
        let uu____7787 = lookup lid in
        match uu____7787 with
        | FStar_Pervasives_Native.None  ->
            let opened_modules =
              FStar_List.map
                (fun uu____7800  ->
                   match uu____7800 with
                   | (lid1,uu____7806) -> FStar_Ident.text_of_lid lid1)
                env.modules in
            let msg =
              FStar_Util.format1 "Identifier not found: [%s]"
                (FStar_Ident.text_of_lid lid) in
            let msg1 =
              if
                (FStar_List.length lid.FStar_Ident.ns) =
                  (Prims.parse_int "0")
              then msg
              else
                (let modul =
                   let uu____7811 = FStar_Ident.lid_of_ids lid.FStar_Ident.ns in
                   FStar_Ident.set_lid_range uu____7811
                     (FStar_Ident.range_of_lid lid) in
                 let uu____7812 = resolve_module_name env modul true in
                 match uu____7812 with
                 | FStar_Pervasives_Native.None  ->
                     let opened_modules1 =
                       FStar_String.concat ", " opened_modules in
                     FStar_Util.format3
                       "%s\nModule %s does not belong to the list of modules in scope, namely %s"
                       msg modul.FStar_Ident.str opened_modules1
                 | FStar_Pervasives_Native.Some modul' when
                     Prims.op_Negation
                       (FStar_List.existsb
                          (fun m  -> m = modul'.FStar_Ident.str)
                          opened_modules)
                     ->
                     let opened_modules1 =
                       FStar_String.concat ", " opened_modules in
                     FStar_Util.format4
                       "%s\nModule %s resolved into %s, which does not belong to the list of modules in scope, namely %s"
                       msg modul.FStar_Ident.str modul'.FStar_Ident.str
                       opened_modules1
                 | FStar_Pervasives_Native.Some modul' ->
                     FStar_Util.format4
                       "%s\nModule %s resolved into %s, definition %s not found"
                       msg modul.FStar_Ident.str modul'.FStar_Ident.str
                       (lid.FStar_Ident.ident).FStar_Ident.idText) in
            raise (FStar_Errors.Error (msg1, (FStar_Ident.range_of_lid lid)))
        | FStar_Pervasives_Native.Some r -> r
let fail_or2:
  'a .
    (FStar_Ident.ident -> 'a FStar_Pervasives_Native.option) ->
      FStar_Ident.ident -> 'a
  =
  fun lookup  ->
    fun id  ->
      let uu____7846 = lookup id in
      match uu____7846 with
      | FStar_Pervasives_Native.None  ->
          raise
            (FStar_Errors.Error
               ((Prims.strcat "Identifier not found ["
                   (Prims.strcat id.FStar_Ident.idText "]")),
                 (id.FStar_Ident.idRange)))
      | FStar_Pervasives_Native.Some r -> r

open Prims
# 4 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

type ident =
{idText : Prims.string; idRange : FStar_Range.range}

# 4 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let is_Mkident : ident  ->  Prims.bool = (Obj.magic ((fun _ -> (FStar_All.failwith "Not yet implemented:is_Mkident"))))

# 7 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

type lident =
{ns : ident Prims.list; ident : ident; nsstr : Prims.string; str : Prims.string}

# 7 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let is_Mklident : lident  ->  Prims.bool = (Obj.magic ((fun _ -> (FStar_All.failwith "Not yet implemented:is_Mklident"))))

# 12 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

type lid =
lident

# 14 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let mk_ident : (Prims.string * FStar_Range.range)  ->  ident = (fun _21_11 -> (match (_21_11) with
| (text, range) -> begin
{idText = text; idRange = range}
end))

# 15 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let gen : FStar_Range.range  ->  ident = (let x = (FStar_ST.alloc 0)
in (fun r -> (let _21_14 = (let _123_25 = ((FStar_ST.read x) + 1)
in (FStar_ST.op_Colon_Equals x _123_25))
in (let _123_29 = (let _123_28 = (let _123_27 = (let _123_26 = (FStar_ST.read x)
in (Prims.string_of_int _123_26))
in (Prims.strcat "@x_" _123_27))
in (_123_28, r))
in (mk_ident _123_29)))))

# 18 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let id_of_text : Prims.string  ->  ident = (fun str -> (mk_ident (str, FStar_Range.dummyRange)))

# 19 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let text_of_id : ident  ->  Prims.string = (fun id -> id.idText)

# 20 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let text_of_path : Prims.string Prims.list  ->  Prims.string = (fun path -> (FStar_Util.concat_l "." path))

# 21 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let path_of_text : Prims.string  ->  Prims.string Prims.list = (fun text -> (FStar_String.split (('.')::[]) text))

# 22 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let path_of_ns : ident Prims.list  ->  Prims.string Prims.list = (fun ns -> (FStar_List.map text_of_id ns))

# 23 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let path_of_lid : lident  ->  Prims.string Prims.list = (fun lid -> (FStar_List.map text_of_id (FStar_List.append lid.ns ((lid.ident)::[]))))

# 24 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let ids_of_lid : lident  ->  ident Prims.list = (fun lid -> (FStar_List.append lid.ns ((lid.ident)::[])))

# 25 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let lid_of_ids : ident Prims.list  ->  lident = (fun ids -> (let _21_26 = (FStar_Util.prefix ids)
in (match (_21_26) with
| (ns, id) -> begin
(let nsstr = (let _123_46 = (FStar_List.map text_of_id ns)
in (FStar_All.pipe_right _123_46 text_of_path))
in {ns = ns; ident = id; nsstr = nsstr; str = if (nsstr = "") then begin
id.idText
end else begin
(Prims.strcat (Prims.strcat nsstr ".") id.idText)
end})
end)))

# 32 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let lid_of_path : Prims.string Prims.list  ->  FStar_Range.range  ->  lident = (fun path pos -> (let ids = (FStar_List.map (fun s -> (mk_ident (s, pos))) path)
in (lid_of_ids ids)))

# 35 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let text_of_lid : lident  ->  Prims.string = (fun lid -> lid.str)

# 36 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let lid_equals : lident  ->  lident  ->  Prims.bool = (fun l1 l2 -> (l1.str = l2.str))

# 37 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let lid_with_range : lid  ->  FStar_Range.range  ->  lident = (fun lid r -> (let id = (let _21_37 = lid.ident
in {idText = _21_37.idText; idRange = r})
in (let _21_40 = lid
in {ns = _21_40.ns; ident = id; nsstr = _21_40.nsstr; str = _21_40.str})))

# 40 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let range_of_lid : lid  ->  FStar_Range.range = (fun lid -> lid.ident.idRange)

# 41 "C:\\Users\\nswamy\\workspace\\FStar\\src\\basic\\ident.fs"

let set_lid_range : lident  ->  FStar_Range.range  ->  lident = (fun l r -> (let ids = (FStar_All.pipe_right (FStar_List.append l.ns ((l.ident)::[])) (FStar_List.map (fun i -> (mk_ident (i.idText, r)))))
in (lid_of_ids ids)))





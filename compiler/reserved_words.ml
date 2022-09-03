module SymbolTable = 
    struct
        type t = string
        let compare = compare
    end

module SymbolMap = Map.Make(SymbolTable)
type type_map = string SymbolMap.t
let map = SymbolMap.empty;;
let printMap m =
  SymbolMap.iter (fun key value -> Printf.printf "'%s' -> %d\n" key value) m;;


(* The symbols *)
let map = SymbolMap.add "int" 0 map;;
let map = SymbolMap.add "double" 1 map;;
let map = SymbolMap.add "+" 3 map;;
let map = SymbolMap.add "-" 4 map;;
let map = SymbolMap.add "*" 5 map;;
let map = SymbolMap.add "/" 6 map;;

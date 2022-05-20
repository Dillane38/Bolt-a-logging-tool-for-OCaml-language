type token =
  | CLOSING_BRACE
  | EQUAL
  | OPENING_BRACE
  | SEMICOLON
  | LOGGER
  | EOF
  | AND
  | OR
  | IDENT of (string)
  | INTEGER of (int)
  | FLOAT of (float)
  | STRING of (string)

open Parsing;;
let _ = parse_error;;
# 20 "src/library/configParser.mly"

type error =
  | Invalid_file_contents
  | Invalid_logger_name of string
  | Invalid_logger
  | Invalid_property

let string_of_error = function
  | Invalid_file_contents -> "invalid file contents"
  | Invalid_logger_name x -> Printf.sprintf "invalid logger name %S" x
  | Invalid_logger -> "invalid logger"
  | Invalid_property -> "invalid property"

let fail error =
  let pos = Parsing.symbol_start_pos () in
  let line = pos.Lexing.pos_lnum in
  raise (Configuration.Exception (line, string_of_error error))

# 37 "src/library/configParser.ml"
let yytransl_const = [|
  257 (* CLOSING_BRACE *);
  258 (* EQUAL *);
  259 (* OPENING_BRACE *);
  260 (* SEMICOLON *);
  261 (* LOGGER *);
    0 (* EOF *);
  262 (* AND *);
  263 (* OR *);
    0|]

let yytransl_block = [|
  264 (* IDENT *);
  265 (* INTEGER *);
  266 (* FLOAT *);
  267 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\003\000\003\000\004\000\004\000\
\006\000\006\000\007\000\007\000\007\000\007\000\008\000\008\000\
\008\000\005\000\005\000\000\000"

let yylen = "\002\000\
\002\000\001\000\000\000\002\000\006\000\002\000\000\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\001\000\003\000\
\003\000\000\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\002\000\020\000\000\000\000\000\001\000\004\000\
\006\000\000\000\007\000\000\000\010\000\000\000\000\000\008\000\
\019\000\005\000\000\000\015\000\012\000\013\000\014\000\000\000\
\000\000\009\000\000\000\000\000\016\000\000\000"

let yydgoto = "\002\000\
\004\000\005\000\008\000\012\000\018\000\016\000\024\000\025\000"

let yysindex = "\009\000\
\004\255\000\000\000\000\000\000\001\000\000\255\000\000\000\000\
\000\000\018\255\000\000\016\255\000\000\028\255\021\255\000\000\
\000\000\000\000\020\255\000\000\000\000\000\000\000\000\028\255\
\001\255\000\000\025\255\025\255\000\000\029\255"

let yyrindex = "\000\000\
\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\255\
\014\255\000\000\000\000\000\000\000\000\005\255"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\010\000\000\000\000\000\254\255"

let yytablesize = 264
let yytable = "\009\000\
\007\000\003\000\018\000\003\000\017\000\017\000\027\000\028\000\
\017\000\001\000\010\000\017\000\017\000\011\000\011\000\013\000\
\014\000\011\000\018\000\018\000\011\000\011\000\019\000\015\000\
\029\000\030\000\018\000\020\000\021\000\022\000\023\000\017\000\
\020\000\026\000\027\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\006\000\003\000\018\000"

let yycheck = "\000\001\
\000\000\000\000\000\000\000\001\000\001\001\001\006\001\007\001\
\004\001\001\000\011\001\007\001\008\001\000\001\001\001\000\001\
\001\001\004\001\000\001\001\001\003\001\008\001\002\001\008\001\
\027\000\028\000\008\001\008\001\009\001\010\001\011\001\004\001\
\008\001\024\000\006\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\005\001\005\001\005\001"

let yynames_const = "\
  CLOSING_BRACE\000\
  EQUAL\000\
  OPENING_BRACE\000\
  SEMICOLON\000\
  LOGGER\000\
  EOF\000\
  AND\000\
  OR\000\
  "

let yynames_block = "\
  IDENT\000\
  INTEGER\000\
  FLOAT\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'logger_list) in
    Obj.repr(
# 56 "src/library/configParser.mly"
                                 ( List.rev _1 )
# 186 "src/library/configParser.ml"
               : Configuration.t))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "src/library/configParser.mly"
                                 ( fail Invalid_file_contents )
# 192 "src/library/configParser.ml"
               : Configuration.t))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "src/library/configParser.mly"
                                 ( [] )
# 198 "src/library/configParser.ml"
               : 'logger_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'logger_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'logger) in
    Obj.repr(
# 60 "src/library/configParser.mly"
                                 ( _2 :: _1 )
# 206 "src/library/configParser.ml"
               : 'logger_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'property_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'separator_opt) in
    Obj.repr(
# 63 "src/library/configParser.mly"
                                 ( let name =
                                   try
                                     Name.of_string _2
                                   with _ -> fail (Invalid_logger_name _2) in
                                   { Configuration.name = name;
                                     Configuration.elements = _4; } )
# 220 "src/library/configParser.ml"
               : 'logger))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "src/library/configParser.mly"
                                 ( fail Invalid_logger )
# 226 "src/library/configParser.ml"
               : 'logger))
; (fun __caml_parser_env ->
    Obj.repr(
# 71 "src/library/configParser.mly"
                                 ( [] )
# 232 "src/library/configParser.ml"
               : 'property_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'property_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'property) in
    Obj.repr(
# 72 "src/library/configParser.mly"
                                 ( _2 :: _1 )
# 240 "src/library/configParser.ml"
               : 'property_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'property_value) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'separator_opt) in
    Obj.repr(
# 75 "src/library/configParser.mly"
                                 ( (_1, _3) )
# 249 "src/library/configParser.ml"
               : 'property))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "src/library/configParser.mly"
                                 ( fail Invalid_property )
# 255 "src/library/configParser.ml"
               : 'property))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 78 "src/library/configParser.mly"
                                 ( _1 )
# 262 "src/library/configParser.ml"
               : 'property_value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 79 "src/library/configParser.mly"
                                 ( Configuration.Integer _1 )
# 269 "src/library/configParser.ml"
               : 'property_value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 80 "src/library/configParser.mly"
                                 ( Configuration.Float _1 )
# 276 "src/library/configParser.ml"
               : 'property_value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 81 "src/library/configParser.mly"
                                 ( Configuration.String _1 )
# 283 "src/library/configParser.ml"
               : 'property_value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 83 "src/library/configParser.mly"
                                 ( Configuration.Identifier _1 )
# 290 "src/library/configParser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 84 "src/library/configParser.mly"
                                 ( Configuration.And (_1, _3) )
# 298 "src/library/configParser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 85 "src/library/configParser.mly"
                                 ( Configuration.Or (_1, _3)  )
# 306 "src/library/configParser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "src/library/configParser.mly"
                                 ( )
# 312 "src/library/configParser.ml"
               : 'separator_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 88 "src/library/configParser.mly"
                                 ( )
# 318 "src/library/configParser.ml"
               : 'separator_opt))
(* Entry file *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let file (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Configuration.t)
;;

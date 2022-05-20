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

val file :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Configuration.t

open Ast
open Parser

let tokenize = function
| LPAREN -> "LPAREN"
| RPAREN -> "RPAREN"
| LBRACE -> "LBRACE"
| RBRACE -> "RBRACE"
| LSQBRACE -> "LSQBRACE"
| RSQBRACE -> "RSQBRACE"
| LPERCENT -> "LPERCENT"
| RPERCENT -> "RPERCENT"
| LMPERCENT -> "LMPERCENT"
| RMPERCENT -> "RMPERCENT"
| SEMI -> "SEMI"
| COLON -> "COLON"
| COMMA -> "COMMA"
| BAR -> "BAR"
| PLUS -> "PLUS"
| MPLUS -> "MPLUS"
| MINUS -> "MINUS"
| MMINUS -> "MMINUS"
| TIMES -> "TIMES"
| MTIMES -> "MTIMES"
| DIVIDE -> "DIVIDE"
| MDIVIDE -> "MDIVIDE"
| ASSIGN -> "ASSIGN"
| EQ -> "EQ"
| NEQ -> "NEQ"
| MEQ -> "MEQ"
| PLUSEQ -> "PLUSEQ"
| LT -> "LT"
| LEQ -> "LEQ"
| GT -> "GT"
| GEQ -> "GEQ"
| AND -> "AND"
| OR -> "OR"
| NOT -> "NOT"
| IF -> "IF"
| ELSE -> "ELSE"
| FOR -> "FOR"
| WHILE -> "WHILE"
| RETURN -> "RETURN"
| INT -> "INT"
| BOOL -> "BOOL"
| STRING -> "STRING"
| FLOAT -> "FLOAT"
| VOID -> "VOID"
| MATRIX -> "MATRIX"
| ROW -> "ROW"
| COLUMN -> "COLUMN"
| FILE -> "FILE"
| TUPLE -> "TUPLE"
| DEF -> "DEF"
| IN -> "IN"
| TRUE -> "TRUE"
| FALSE -> "FALSE"
| FLOAT_LIT(float) -> "FLOAT_LIT"
| INT_LIT(int) -> "INT_LIT"
| ID(string) -> "ID"
| STRING_LIT(string) -> "STRING_LIT"
| EOF -> "EOF"

let _=
	let lexbuf = Lexing.from_channel stdin in
	let rec print_tokens = function
	| EOF -> " "
	| token ->
			print_endline (tokenize token);
			print_tokens (Scanner.token lexbuf) in print_tokens (Scanner.token lexbuf)

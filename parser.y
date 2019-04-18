/* Compiler Theory and Design
   Breanna Chung */

%{

#include <string>

using namespace std;

#include "listing.h"

int yylex();
void yyerror(const char* message);

%}

%error-verbose

%token IDENTIFIER
%token INT_LITERAL
%token REAL_LITERAL
%token BOOL_LITERAL


%token ADDOP MULOP RELOP ANDOP EXPOP REMOP

%token BEGIN_ BOOLEAN END ENDREDUCE FUNCTION INTEGER IS REDUCE RETURNS CASE ELSE ARROW

%token ENDCASE ENDIF IF OTHERS REAL THEN WHEN OROP NOT

%%

function:
	function_header optional_variable body ;

function_header:
	FUNCTION IDENTIFIER RETURNS type ';' ;

optional_variable:
	variable |
	;

variable:
	IDENTIFIER ':' type IS statement_ ;

type:
	INTEGER |
  REAL |
	BOOLEAN ;

body:
	BEGIN_ statement_ END ';' ;

statement_:
	statement ';' |
	error ';' ;

statement:
	expression ; |
	REDUCE operator reductions ENDREDUCE ; |
  IF expression THEN statement ELSE statement ENDIF ; |
  CASE expression IS optional_cases OTHERS ARROW statement ';' ENDCASE ';' ;

optional_cases:
	optional_cases case |
  case ;

case:
  WHEN INT_LITERAL ARROW statement ;

operator:
	EXPOP |
  MULOP |
  ADDOP |
  REMOP |
  RELOP |
  ANDOP |
  OROP ;

reductions:
	reductions statement_ |
	;

expression:
	expression ANDOP relation |
	relation ;

relation:
	relation RELOP term |
	term;

term:
	term ADDOP factor |
	factor ;

factor:
	factor MULOP primary |
	primary ;

primary:
	'(' expression ')' |
  NOT |
	INT_LITERAL | REAL_LITERAL | BOOL_LITERAL |
	IDENTIFIER ;

%%

void yyerror(const char* message)
{
	appendError(SYNTAX, message);
}

int main(int argc, char *argv[])
{
	firstLine();
	yyparse();
	lastLine();
	return 0;
}

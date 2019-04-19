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
%token <primary> INT_LITERAL
%token <primary> REAL_LITERAL
%token <primary> BOOL_LITERAL


%token ADDOP MULOP RELOP OROP ANDOP EXPOP REMOP

%token BEGIN_ BOOLEAN END ENDREDUCE FUNCTION INTEGER IS REDUCE RETURNS CASE ELSE ARROW

%token ENDCASE ENDIF IF OTHERS REAL THEN WHEN NOT

%%

function:
	function_header optional_variable body ;

function_header:
	FUNCTION IDENTIFIER optional_parameter RETURNS type ';' ;

optional_variable:
	optional_variable variable |
	;

variable:
	IDENTIFIER':' type IS statement_ ;

optional_parameter:
    optional_parameter parameter |
    ;

parameter:
      IDENTIFIER':' type  ;

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
	expression |
	REDUCE operator reductions ENDREDUCE  |
  IF expression THEN statement_ ELSE statement_ ENDIF  |
  CASE expression IS optional_cases OTHERS ARROW statement_ ENDCASE ;

reductions:
  	reductions statement_ |
  	;

optional_cases:
	optional_cases case |
  ;

case:
  WHEN INT_LITERAL ARROW statement_ ;

operator:
	EXPOP |
  MULOP REMOP |
  ADDOP |
  RELOP |
  ANDOP |
  OROP ;

/*I wasn't sure which way you wanted it Professor Jarc so I'm giving redundant cases*/
expression:
  expression ANDOP relation | expression OROP relation |
  relation;



relation:
	relation RELOP term |
	term;


term:
	term ADDOP factor |
	factor ;


factor:
	factor MULOP primary |
  factor REMOP |
  exponent;
//	primary ;

exponent:
  factor EXPOP primary |
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

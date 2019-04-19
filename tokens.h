/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IDENTIFIER = 258,
     INT_LITERAL = 259,
     REAL_LITERAL = 260,
     BOOL_LITERAL = 261,
     ADDOP = 262,
     MULOP = 263,
     RELOP = 264,
     OROP = 265,
     ANDOP = 266,
     EXPOP = 267,
     REMOP = 268,
     BEGIN_ = 269,
     BOOLEAN = 270,
     END = 271,
     ENDREDUCE = 272,
     FUNCTION = 273,
     INTEGER = 274,
     IS = 275,
     REDUCE = 276,
     RETURNS = 277,
     CASE = 278,
     ELSE = 279,
     ARROW = 280,
     ENDCASE = 281,
     ENDIF = 282,
     IF = 283,
     OTHERS = 284,
     REAL = 285,
     THEN = 286,
     WHEN = 287,
     NOT = 288
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define INT_LITERAL 259
#define REAL_LITERAL 260
#define BOOL_LITERAL 261
#define ADDOP 262
#define MULOP 263
#define RELOP 264
#define OROP 265
#define ANDOP 266
#define EXPOP 267
#define REMOP 268
#define BEGIN_ 269
#define BOOLEAN 270
#define END 271
#define ENDREDUCE 272
#define FUNCTION 273
#define INTEGER 274
#define IS 275
#define REDUCE 276
#define RETURNS 277
#define CASE 278
#define ELSE 279
#define ARROW 280
#define ENDCASE 281
#define ENDIF 282
#define IF 283
#define OTHERS 284
#define REAL 285
#define THEN 286
#define WHEN 287
#define NOT 288




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;


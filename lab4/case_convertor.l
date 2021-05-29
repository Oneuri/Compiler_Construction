%{
#include <stdio.h>

%}

%%
[a-z]       {yytext[0] -= 32;printf("%s",yytext);}
[A-Z]       {yytext[0] += 32;printf("%s",yytext);}

%%

int yywrap(){
    return 1;/*yywrap: when we have to take any input or for closing the file*/
}

int main(){
    yylex();/*reco input string and command for lexer /scanner to start working*/
    return 0;
}

%{
#include <stdio.h>

%}

%%
[a-z]       {yytext[0] -= 32;printf("%s",yytext);}
[A-Z]       {yytext[0] += 32;printf("%s",yytext);}

%%

int yywrap(){
    return 1;/*yywrap: when we have to take any input*/
}

int main(){
    yylex();/*reco input string and return to the parser*/
    return 0;
}

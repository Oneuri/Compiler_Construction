%{
int lines=0,words=0,total=0,sc=0,a=0,b=0,c=0,d=0,keywords=0,id=0;
%}

TYPE int|char|bool|float|void|for|do|while|if|else|return|void

%%
\n { lines++; words++;}
[\t ' '] words++;
([ ])+ sc++; //space counter
"//".* {a++;}
"/*" {b++;}
.*"*/" {b--;c++;}
{TYPE} {keywords++;}
[a-zA-Z][a-zA-Z0-9_]* { id++;}
%%

int main()
{
yyin= fopen("Urjit.txt","r");
yylex();
printf("\n\t%d lines", lines);
printf("\n\t%d words",words);
printf("\n\t%d No. of spaces", sc);
printf("\n\t%d singleline comment \n\t%d multiline comment",a,c);
d=a+c;
printf("\n\t%d total comments",d);
printf("\n\t%d keywords", keywords);
printf("\n\t%d identifiers", id);
return 0;
}
 
int yywrap()
{
return(1);
}


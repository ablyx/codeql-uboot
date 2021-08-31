import cpp

from MacroInvocation invo
where invo.getMacroName() in ["ntohs", "ntohl", "ntohll"]
select invo.getExpr()
import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation invo |
        invo.getExpr() = this and
        invo.getMacroName() in ["ntohs", "ntohl", "ntohll"]
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"
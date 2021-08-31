import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation invo |
        invo.getExpr() = this
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"
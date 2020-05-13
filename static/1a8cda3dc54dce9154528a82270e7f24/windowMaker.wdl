version 1.0

task WindowMaker {
  input {
    String gG
    String bB
    String wW
    String sS
    String nN
    Boolean reverseReverse
    String iI
    String? chr18Chr18Gl000207Random
  }
  command <<<
    windowMaker \
      ~{chr18Chr18Gl000207Random} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-reverse" false="" reverseReverse} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}
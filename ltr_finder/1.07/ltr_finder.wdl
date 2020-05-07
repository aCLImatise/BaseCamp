version 1.0

task LtrFinder {
  input {
    String oO
    String tT
    String eE
    String mM
    String uU
    String dD
    String dD
    String lL
    String lL
    String pP
    String gG
    String gG
    String tT
    String jJ
    String jJ
    String sS
    String mM
    String bB
    String bB
    String rR
    String wW
    String oO
    String pP
    File sS
    File fF
    String aA
    Boolean xX
    Boolean eE
    Boolean cC
    Boolean fF
  }
  command <<<
    ltr_finder \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(jJ) then ("-J " +  '"' + jJ + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-E" false="" eE} \
      ~{true="-C" false="" cC} \
      ~{true="-F" false="" fF}
  >>>
}
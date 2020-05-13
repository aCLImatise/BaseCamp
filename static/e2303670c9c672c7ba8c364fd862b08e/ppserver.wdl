version 1.0

task Ppserver.py {
  input {
    Boolean hdHdAr
    String fF
    String nN
    String cC
    Int iI
    String bB
    String pP
    String wW
    String sS
    String tT
    String kK
    String pP
  }
  command <<<
    ppserver.py \
      ~{true="-hdar" false="" hdHdAr} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""}
  >>>
}
version 1.0

task FluffBandplot {
  input {
    File fF
    Boolean dD
    File countsCounts
    String oO
    Boolean rR
    Boolean sS
    Int bB
    String fF
    Boolean dD
    Boolean rR
    String sS
    Int pP
    Int pP
    String cC
    String tT
  }
  command <<<
    fluff bandplot \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(countsCounts) then ("-counts " +  '"' + countsCounts + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-S" false="" sS} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{true="-R" false="" rR} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""}
  >>>
}
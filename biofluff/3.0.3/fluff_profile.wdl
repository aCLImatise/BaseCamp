version 1.0

task FluffProfile {
  input {
    Int iI
    Boolean dD
    String oO
    Boolean nN
    File aA
    String tT
    String sS
    Int sS
    String fF
    Boolean dD
    Boolean rR
    Boolean rR
    String cC
    String bB
    String tT
    Boolean hH
  }
  command <<<
    fluff profile \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{true="-R" false="" rR} \
      ~{true="-r" false="" rR} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-H" false="" hH}
  >>>
}
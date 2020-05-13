version 1.0

task PhastMotif {
  input {
    File tT
    String iI
    File bB
    Boolean sS
    Int kK
    String bB
    Boolean mM
    Boolean dD
    Boolean pP
    String nN
    String iI
    Boolean pP
    Boolean rR
    String wW
    String cC
    Boolean sS
    String oO
    Boolean hH
    Boolean dD
    Boolean xX
    String? optionsOptions
    String? msaMsaList
  }
  command <<<
    phastMotif \
      ~{optionsOptions} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{true="-R" false="" rR} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-H" false="" hH} \
      ~{true="-D" false="" dD} \
      ~{true="-x" false="" xX} \
      ~{msaMsaList}
  >>>
}
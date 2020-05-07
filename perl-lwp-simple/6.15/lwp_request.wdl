version 1.0

task LwpRequest {
  input {
    String mM
    Boolean fF
    String bB
    String tT
    String iI
    String cC
    Boolean aA
    String pP
    Boolean pP
    String hH
    String cC
    Boolean uU
    Boolean uU
    Boolean sS
    Boolean sS
    Boolean eE
    Boolean eE
    Boolean dD
    String oO
    Boolean vV
  }
  command <<<
    lwp-request \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-U" false="" uU} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{true="-E" false="" eE} \
      ~{true="-d" false="" dD} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}
version 1.0

task HtsboxTabix {
  input {
    Int sS
    String cC
    Boolean aA
    Boolean fF
    Int mM
  }
  command <<<
    htsbox tabix \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-f" false="" fF} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}
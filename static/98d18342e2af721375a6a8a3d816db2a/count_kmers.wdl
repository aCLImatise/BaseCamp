version 1.0

task CountKmers {
  input {
    String fF
    String rR
    String cC
    String nN
    String kK
    Int mM
    Boolean fF
    Boolean sS
    Boolean sS
  }
  command <<<
    count-kmers \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-S" false="" sS} \
      ~{true="-s" false="" sS}
  >>>
}
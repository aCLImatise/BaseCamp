version 1.0

task CountQmers {
  input {
    String fF
    String rR
    String cC
    String nN
    String kK
    Int mM
    Boolean sS
    String lL
  }
  command <<<
    count-qmers \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}
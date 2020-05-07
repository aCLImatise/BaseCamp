version 1.0

task PgSAtest {
  input {
    Int kK
    String rR
    String nN
    String cC
    Boolean pP
    Boolean sS
    Boolean fF
    String? ofOf
    String? repeatsRepeats
    String? ofOf
    String? testTestKmErs
    String? indexIndexFile
  }
  command <<<
    PgSAtest \
      ~{ofOf} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{repeatsRepeats} \
      ~{ofOf} \
      ~{testTestKmErs} \
      ~{indexIndexFile}
  >>>
}
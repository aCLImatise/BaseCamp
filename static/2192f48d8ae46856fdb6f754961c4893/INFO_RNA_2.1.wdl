version 1.0

task INFORNA2.1.2 {
  input {
    Boolean cC
    Boolean rR
    Boolean fF
    Boolean vV
    Int nN
    Boolean fF
    Boolean rR
    String sS
    Boolean mM
    String sS
    String nN
    String pP
  }
  command <<<
    INFO-RNA-2.1.2 \
      ~{true="-c" false="" cC} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-R" false="" rR} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}
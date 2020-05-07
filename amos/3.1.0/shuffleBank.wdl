version 1.0

task ShuffleBank {
  input {
    String bankBank
    String pP
    Boolean cC
    Boolean rR
    Boolean eidEid
    Boolean iidIid
    Boolean fF
    Int qQ
    Boolean aA
    Boolean dD
    String lL
    Boolean eE
    String iI
  }
  command <<<
    shuffleBank \
      ~{if defined(bankBank) then ("-bank " +  '"' + bankBank + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-r" false="" rR} \
      ~{true="-eid" false="" eidEid} \
      ~{true="-iid" false="" iidIid} \
      ~{true="-f" false="" fF} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-E" false="" eE} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""}
  >>>
}
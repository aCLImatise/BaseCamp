version 1.0

task Bank2fasta {
  input {
    String bankBank
    Boolean eidEid
    Boolean iidIid
    File eE
    File iI
    File qQ
    Boolean dD
  }
  command <<<
    bank2fasta \
      ~{if defined(bankBank) then ("-bank " +  '"' + bankBank + '"') else ""} \
      ~{true="-eid" false="" eidEid} \
      ~{true="-iid" false="" iidIid} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-d" false="" dD}
  >>>
}
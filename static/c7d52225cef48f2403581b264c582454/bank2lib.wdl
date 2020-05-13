version 1.0

task Bank2lib {
  input {
    String bankBank
    Boolean eidEid
    Boolean iidIid
    String oO
  }
  command <<<
    bank2lib \
      ~{if defined(bankBank) then ("-bank " +  '"' + bankBank + '"') else ""} \
      ~{true="-eid" false="" eidEid} \
      ~{true="-iid" false="" iidIid} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}
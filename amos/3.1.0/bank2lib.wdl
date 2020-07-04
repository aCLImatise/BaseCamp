version 1.0

task Bank2lib {
  input {
    String? bank
    Boolean? eid
    Boolean? iid
    String? output_prefix
  }
  command <<<
    bank2lib \
      ~{if defined(bank) then ("-bank " +  '"' + bank + '"') else ""} \
      ~{true="-eid" false="" eid} \
      ~{true="-iid" false="" iid} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    eid: "report eids"
    iid: "report iids (default)"
    output_prefix: "output prefix"
  }
}
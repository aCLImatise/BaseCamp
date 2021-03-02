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
      ~{if (eid) then "-eid" else ""} \
      ~{if (iid) then "-iid" else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bank: "bank where assembly is stored"
    eid: "report eids"
    iid: "report iids (default)"
    output_prefix: "output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}
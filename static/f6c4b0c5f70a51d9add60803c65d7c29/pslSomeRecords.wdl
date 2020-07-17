version 1.0

task PslSomeRecords {
  input {
    Boolean? not
    Boolean? t_too
    String psl_in
    String list_file
    String psl_out
  }
  command <<<
    pslSomeRecords \
      ~{psl_in} \
      ~{list_file} \
      ~{psl_out} \
      ~{true="-not" false="" not} \
      ~{true="-tToo" false="" t_too}
  >>>
  parameter_meta {
    not: "- include psl if name is NOT in list"
    t_too: "- if set, the list file is two column, qName and tName. In this case only records matching on both q and t are output"
    psl_in: ""
    list_file: ""
    psl_out: ""
  }
}
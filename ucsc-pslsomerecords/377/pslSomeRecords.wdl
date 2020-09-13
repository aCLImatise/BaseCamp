version 1.0

task PslSomeRecords {
  input {
    Boolean? not
    File? t_too
    String psl_in
    String list_file
  }
  command <<<
    pslSomeRecords \
      ~{psl_in} \
      ~{list_file} \
      ~{if (not) then "-not" else ""} \
      ~{if (t_too) then "-tToo" else ""}
  >>>
  parameter_meta {
    not: "- include psl if name is NOT in list"
    t_too: "- if set, the list file is two column, qName and tName.\\nIn this case only records matching on both q and t are\\noutput\\n"
    psl_in: ""
    list_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_t_too = "${in_t_too}"
  }
}
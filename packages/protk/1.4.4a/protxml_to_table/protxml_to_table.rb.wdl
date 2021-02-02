version 1.0

task ProtxmlToTablerb {
  input {
    File? explicitly_named_output
    Boolean? groups
    Boolean? invert_probabilities
    Int file_one_dot_prot_xml
  }
  command <<<
    protxml_to_table_rb \
      ~{file_one_dot_prot_xml} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (groups) then "--groups" else ""} \
      ~{if (invert_probabilities) then "--invert-probabilities" else ""}
  >>>
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    groups: "Print output by groups rather than for each protein [false]"
    invert_probabilities: "Output 1-p instead of p for all probability values [false]"
    file_one_dot_prot_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}
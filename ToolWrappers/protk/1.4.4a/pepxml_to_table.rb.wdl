version 1.0

task PepxmlToTablerb {
  input {
    File? explicitly_named_output
    Boolean? invert_probabilities
    Int file_one_dot_pep_dot_xml
  }
  command <<<
    pepxml_to_table_rb \
      ~{file_one_dot_pep_dot_xml} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (invert_probabilities) then "--invert-probabilities" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    invert_probabilities: "Output 1-p instead of p for all probability values [false]"
    file_one_dot_pep_dot_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}
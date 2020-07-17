version 1.0

task PTMProphetParser {
  input {
    String input_file_dot_pep_dot_xml
    String? output_file
  }
  command <<<
    PTMProphetParser \
      ~{input_file_dot_pep_dot_xml} \
      ~{output_file}
  >>>
  parameter_meta {
    input_file_dot_pep_dot_xml: ""
    output_file: ""
  }
}
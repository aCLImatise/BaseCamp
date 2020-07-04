version 1.0

task RespectParser {
  input {
    String input_file_dot_pep_dot_xml
  }
  command <<<
    RespectParser \
      ~{input_file_dot_pep_dot_xml}
  >>>
  parameter_meta {
    input_file_dot_pep_dot_xml: ""
  }
}
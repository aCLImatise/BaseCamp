version 1.0

task LibraPeptideParser {
  input {
    Boolean? c
    String pep_xml_file
    String parameter_file
  }
  command <<<
    LibraPeptideParser \
      ~{pep_xml_file} \
      ~{parameter_file} \
      ~{true="-c" false="" c}
  >>>
  parameter_meta {
    c: ""
    pep_xml_file: ""
    parameter_file: ""
  }
}
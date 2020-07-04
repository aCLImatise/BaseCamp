version 1.0

task Q3ProteinRatioParser {
  input {
    String prot_xml_file
  }
  command <<<
    Q3ProteinRatioParser \
      ~{prot_xml_file}
  >>>
  parameter_meta {
    prot_xml_file: ""
  }
}
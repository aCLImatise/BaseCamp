version 1.0

task XPressProteinRatioParser {
  input {
    String prot_xml_file
  }
  command <<<
    XPressProteinRatioParser \
      ~{prot_xml_file}
  >>>
  parameter_meta {
    prot_xml_file: ""
  }
}
version 1.0

task Pepsum {
  input {
    String? pep_xml_filename
  }
  command <<<
    pepsum \
      ~{pep_xml_filename}
  >>>
  parameter_meta {
    pep_xml_filename: ""
  }
}
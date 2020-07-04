version 1.0

task RefreshParser {
  input {
    String pep_xml_file
    String database
  }
  command <<<
    RefreshParser \
      ~{pep_xml_file} \
      ~{database}
  >>>
  parameter_meta {
    pep_xml_file: ""
    database: ""
  }
}
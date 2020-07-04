version 1.0

task DatabaseParser {
  input {
    String xml_file
  }
  command <<<
    DatabaseParser \
      ~{xml_file}
  >>>
  parameter_meta {
    xml_file: ""
  }
}
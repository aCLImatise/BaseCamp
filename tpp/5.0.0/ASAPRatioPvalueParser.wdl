version 1.0

task ASAPRatioPvalueParser {
  input {
    String xml_file
    String? png_file
  }
  command <<<
    ASAPRatioPvalueParser \
      ~{xml_file} \
      ~{png_file}
  >>>
  parameter_meta {
    xml_file: ""
    png_file: ""
  }
}
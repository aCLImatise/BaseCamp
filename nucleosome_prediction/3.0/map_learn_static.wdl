version 1.0

task MapLearnStatic {
  input {
    String map_learn
    String map_xml_file
  }
  command <<<
    map_learn_static \
      ~{map_learn} \
      ~{map_xml_file}
  >>>
  parameter_meta {
    map_learn: ""
    map_xml_file: ""
  }
}
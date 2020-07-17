version 1.0

task ConvertIDs.pl {
  input {
    String input_file
    String organism
    String id_type
    String? header
    String? var_4
    String? original
    String? var_6
    String? all
  }
  command <<<
    convertIDs.pl \
      ~{input_file} \
      ~{organism} \
      ~{id_type} \
      ~{header} \
      ~{var_4} \
      ~{original} \
      ~{var_6} \
      ~{all}
  >>>
  parameter_meta {
    input_file: ""
    organism: ""
    id_type: ""
    header: ""
    var_4: ""
    original: ""
    var_6: ""
    all: ""
  }
}
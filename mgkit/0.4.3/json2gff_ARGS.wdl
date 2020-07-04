version 1.0

task Json2gffARGS {
  input {
    String json_two_gff
    String var_command
    String? args
  }
  command <<<
    json2gff ARGS \
      ~{json_two_gff} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    json_two_gff: ""
    var_command: ""
    args: ""
  }
}
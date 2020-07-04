version 1.0

task Igvtools {
  input {
    String? var_command
    String? var_input
    File? file_slash_dir
    String? other
    String? arguments
  }
  command <<<
    igvtools \
      ~{var_command} \
      ~{var_input} \
      ~{file_slash_dir} \
      ~{other} \
      ~{arguments}
  >>>
  parameter_meta {
    var_command: ""
    var_input: ""
    file_slash_dir: ""
    other: ""
    arguments: ""
  }
}
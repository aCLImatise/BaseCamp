version 1.0

task IitDump {
  input {
    String? options_dot_dot_dot
    String i_it_file
  }
  command <<<
    iit_dump \
      ~{options_dot_dot_dot} \
      ~{i_it_file}
  >>>
  parameter_meta {
    options_dot_dot_dot: ""
    i_it_file: ""
  }
}
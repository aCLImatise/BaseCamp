version 1.0

task Clustering {
  input {
    String main
    String command_name
    String var_command
    String args_dot_dot_dot
  }
  command <<<
    Clustering \
      ~{main} \
      ~{command_name} \
      ~{var_command} \
      ~{args_dot_dot_dot}
  >>>
  parameter_meta {
    main: ""
    command_name: ""
    var_command: ""
    args_dot_dot_dot: ""
  }
}
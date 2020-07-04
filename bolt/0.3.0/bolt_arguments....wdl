version 1.0

task BoltArguments... {
  input {
    String bolt
    String var_1
    String? var_2
    String? arguments_dot_dot_dot
  }
  command <<<
    bolt arguments... \
      ~{bolt} \
      ~{var_1} \
      ~{var_2} \
      ~{arguments_dot_dot_dot}
  >>>
  parameter_meta {
    bolt: ""
    var_1: ""
    var_2: ""
    arguments_dot_dot_dot: ""
  }
}
version 1.0

task QpAdmFile {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    qpAdm file \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
}
version 1.0

task SingularitySearch {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? search
  }
  command <<<
    singularity search \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{search}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    search: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ClassRun.py {
  input {
    Boolean? clean
    String quick
    String utility
    String to
    String rewrite
    String the
    String wrapper
    String for
    String class_dot
  }
  command <<<
    class_run.py \
      ~{quick} \
      ~{utility} \
      ~{to} \
      ~{rewrite} \
      ~{the} \
      ~{wrapper} \
      ~{for} \
      ~{class_dot} \
      ~{true="--clean" false="" clean}
  >>>
  parameter_meta {
    clean: ""
    quick: ""
    utility: ""
    to: ""
    rewrite: ""
    the: ""
    wrapper: ""
    for: ""
    class_dot: ""
  }
}
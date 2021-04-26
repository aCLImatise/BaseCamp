version 1.0

task ClassRunpy {
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
    class_run_py \
      ~{quick} \
      ~{utility} \
      ~{to} \
      ~{rewrite} \
      ~{the} \
      ~{wrapper} \
      ~{for} \
      ~{class_dot} \
      ~{if (clean) then "--clean" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0"
  }
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
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task PrimalschemeARGS {
  input {
    String primal_scheme
    String var_command
    String? args
  }
  command <<<
    primalscheme ARGS \
      ~{primal_scheme} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/primalscheme:1.3.2--pyh3252c3a_0"
  }
  parameter_meta {
    primal_scheme: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task PrimalschemeCOMMAND {
  input {
    String? args
  }
  command <<<
    primalscheme COMMAND \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/primalscheme:1.3.2--pyh3252c3a_0"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}
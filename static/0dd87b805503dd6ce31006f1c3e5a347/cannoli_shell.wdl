version 1.0

task Cannolishell {
  command <<<
    cannoli_shell
  >>>
  runtime {
    docker: "quay.io/biocontainers/cannoli:0.11.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}
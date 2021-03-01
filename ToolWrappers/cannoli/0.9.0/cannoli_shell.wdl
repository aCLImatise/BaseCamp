version 1.0

task Cannolishell {
  command <<<
    cannoli_shell
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
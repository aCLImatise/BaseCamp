version 1.0

task Cannolishell {
  command <<<
    cannoli_shell
  >>>
  output {
    File out_stdout = stdout()
  }
}
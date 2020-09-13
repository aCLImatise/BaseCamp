version 1.0

task Mglobrotamer {
  command <<<
    mglobrotamer
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Mglobgrep {
  command <<<
    mglobgrep
  >>>
  output {
    File out_stdout = stdout()
  }
}
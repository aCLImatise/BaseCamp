version 1.0

task Mglobabel {
  command <<<
    mglobabel
  >>>
  output {
    File out_stdout = stdout()
  }
}
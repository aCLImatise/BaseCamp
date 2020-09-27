version 1.0

task Mglobminimize {
  command <<<
    mglobminimize
  >>>
  output {
    File out_stdout = stdout()
  }
}
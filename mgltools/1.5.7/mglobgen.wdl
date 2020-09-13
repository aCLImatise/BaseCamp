version 1.0

task Mglobgen {
  command <<<
    mglobgen
  >>>
  output {
    File out_stdout = stdout()
  }
}
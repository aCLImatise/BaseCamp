version 1.0

task Expandcurrent {
  command <<<
    expand_current
  >>>
  output {
    File out_stdout = stdout()
  }
}
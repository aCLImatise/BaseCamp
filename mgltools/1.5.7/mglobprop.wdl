version 1.0

task Mglobprop {
  command <<<
    mglobprop
  >>>
  output {
    File out_stdout = stdout()
  }
}
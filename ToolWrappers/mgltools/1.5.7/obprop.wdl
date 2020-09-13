version 1.0

task Obprop {
  command <<<
    obprop
  >>>
  output {
    File out_stdout = stdout()
  }
}
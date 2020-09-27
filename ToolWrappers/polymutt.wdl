version 1.0

task Polymutt {
  command <<<
    polymutt
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Parldyn {
  command <<<
    parldyn
  >>>
  output {
    File out_stdout = stdout()
  }
}
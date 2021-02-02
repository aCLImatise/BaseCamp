version 1.0

task Obrms {
  command <<<
    obrms
  >>>
  output {
    File out_stdout = stdout()
  }
}
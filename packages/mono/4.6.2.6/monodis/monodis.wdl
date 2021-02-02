version 1.0

task Monodis {
  command <<<
    monodis
  >>>
  output {
    File out_stdout = stdout()
  }
}
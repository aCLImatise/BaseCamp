version 1.0

task Nemo {
  command <<<
    nemo
  >>>
  output {
    File out_stdout = stdout()
  }
}
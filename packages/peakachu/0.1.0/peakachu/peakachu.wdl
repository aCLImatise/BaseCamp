version 1.0

task Peakachu {
  command <<<
    peakachu
  >>>
  output {
    File out_stdout = stdout()
  }
}
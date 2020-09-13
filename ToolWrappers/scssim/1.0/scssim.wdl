version 1.0

task Scssim {
  command <<<
    scssim
  >>>
  output {
    File out_stdout = stdout()
  }
}
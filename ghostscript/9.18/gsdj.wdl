version 1.0

task Gsdj {
  command <<<
    gsdj
  >>>
  output {
    File out_stdout = stdout()
  }
}
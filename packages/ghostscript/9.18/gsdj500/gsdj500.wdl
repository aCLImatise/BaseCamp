version 1.0

task Gsdj500 {
  command <<<
    gsdj500
  >>>
  output {
    File out_stdout = stdout()
  }
}
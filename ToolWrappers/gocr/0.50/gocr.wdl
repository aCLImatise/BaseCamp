version 1.0

task Gocr {
  command <<<
    gocr
  >>>
  output {
    File out_stdout = stdout()
  }
}
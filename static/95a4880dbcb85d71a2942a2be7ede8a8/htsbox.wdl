version 1.0

task Htsbox {
  command <<<
    htsbox
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Sift4g {
  command <<<
    sift4g
  >>>
  output {
    File out_stdout = stdout()
  }
}
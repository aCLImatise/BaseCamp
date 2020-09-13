version 1.0

task Stssearch {
  command <<<
    stssearch
  >>>
  output {
    File out_stdout = stdout()
  }
}
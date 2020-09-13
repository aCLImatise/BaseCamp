version 1.0

task Screed {
  command <<<
    screed
  >>>
  output {
    File out_stdout = stdout()
  }
}
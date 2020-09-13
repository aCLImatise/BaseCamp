version 1.0

task Scrappie {
  command <<<
    scrappie
  >>>
  output {
    File out_stdout = stdout()
  }
}
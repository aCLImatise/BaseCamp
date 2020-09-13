version 1.0

task Augur {
  command <<<
    augur
  >>>
  output {
    File out_stdout = stdout()
  }
}
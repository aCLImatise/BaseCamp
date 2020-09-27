version 1.0

task Consense {
  command <<<
    consense
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Bedparse {
  command <<<
    bedparse
  >>>
  output {
    File out_stdout = stdout()
  }
}
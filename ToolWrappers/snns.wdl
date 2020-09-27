version 1.0

task Snns {
  command <<<
    snns
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Converttopdf {
  command <<<
    converttopdf
  >>>
  output {
    File out_stdout = stdout()
  }
}
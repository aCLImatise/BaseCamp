version 1.0

task Lordectrim {
  command <<<
    lordec_trim
  >>>
  output {
    File out_stdout = stdout()
  }
}
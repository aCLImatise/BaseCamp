version 1.0

task Lordectrimsplit {
  command <<<
    lordec_trim_split
  >>>
  output {
    File out_stdout = stdout()
  }
}
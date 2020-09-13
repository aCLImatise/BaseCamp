version 1.0

task Parset {
  command <<<
    parset
  >>>
  output {
    File out_stdout = stdout()
  }
}
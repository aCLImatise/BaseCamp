version 1.0

task Fgbio {
  command <<<
    fgbio
  >>>
  output {
    File out_stdout = stdout()
  }
}
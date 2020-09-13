version 1.0

task Blast2sam {
  command <<<
    blast2sam
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Fixfasta {
  command <<<
    fixfasta
  >>>
  output {
    File out_stdout = stdout()
  }
}
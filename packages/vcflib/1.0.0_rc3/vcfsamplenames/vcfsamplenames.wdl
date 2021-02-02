version 1.0

task Vcfsamplenames {
  command <<<
    vcfsamplenames
  >>>
  output {
    File out_stdout = stdout()
  }
}
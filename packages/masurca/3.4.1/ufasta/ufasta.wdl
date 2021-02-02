version 1.0

task Ufasta {
  command <<<
    ufasta
  >>>
  output {
    File out_stdout = stdout()
  }
}
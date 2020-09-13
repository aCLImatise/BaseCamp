version 1.0

task Fq2fa {
  command <<<
    fq2fa
  >>>
  output {
    File out_stdout = stdout()
  }
}
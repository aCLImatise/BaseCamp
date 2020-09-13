version 1.0

task Ljresidn {
  command <<<
    ljresidn
  >>>
  output {
    File out_stdout = stdout()
  }
}
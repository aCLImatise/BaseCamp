version 1.0

task Ropebwt2 {
  command <<<
    ropebwt2
  >>>
  output {
    File out_stdout = stdout()
  }
}
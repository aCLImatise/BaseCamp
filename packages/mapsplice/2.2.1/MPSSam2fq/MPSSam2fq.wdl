version 1.0

task MPSSam2fq {
  command <<<
    MPSSam2fq
  >>>
  output {
    File out_stdout = stdout()
  }
}
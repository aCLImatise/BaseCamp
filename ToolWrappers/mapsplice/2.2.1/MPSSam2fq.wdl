version 1.0

task MPSSam2fq {
  command <<<
    MPSSam2fq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
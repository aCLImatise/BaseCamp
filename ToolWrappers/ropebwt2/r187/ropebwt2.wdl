version 1.0

task Ropebwt2 {
  command <<<
    ropebwt2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Multic {
  command <<<
    multic
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
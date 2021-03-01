version 1.0

task Plurality {
  command <<<
    plurality
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
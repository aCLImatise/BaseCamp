version 1.0

task Parl {
  command <<<
    parl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
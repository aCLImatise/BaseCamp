version 1.0

task Dbilogstrip {
  command <<<
    dbilogstrip
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
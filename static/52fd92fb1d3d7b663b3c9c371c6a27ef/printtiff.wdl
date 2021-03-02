version 1.0

task Printtiff {
  command <<<
    printtiff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
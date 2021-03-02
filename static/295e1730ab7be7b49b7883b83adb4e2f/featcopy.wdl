version 1.0

task Featcopy {
  command <<<
    featcopy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
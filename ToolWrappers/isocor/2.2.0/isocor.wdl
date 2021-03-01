version 1.0

task Isocor {
  command <<<
    isocor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
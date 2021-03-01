version 1.0

task BlastzWrapper {
  command <<<
    blastzWrapper
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
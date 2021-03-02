version 1.0

task UniqPolishes {
  command <<<
    uniqPolishes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
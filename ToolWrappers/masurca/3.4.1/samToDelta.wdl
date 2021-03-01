version 1.0

task SamToDelta {
  command <<<
    samToDelta
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
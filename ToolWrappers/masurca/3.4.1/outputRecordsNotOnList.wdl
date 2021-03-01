version 1.0

task OutputRecordsNotOnList {
  command <<<
    outputRecordsNotOnList
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
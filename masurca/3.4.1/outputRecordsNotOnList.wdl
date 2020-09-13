version 1.0

task OutputRecordsNotOnList {
  command <<<
    outputRecordsNotOnList
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task LynerChanges {
  command <<<
    lyner changes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
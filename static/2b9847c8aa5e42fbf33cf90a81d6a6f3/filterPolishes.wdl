version 1.0

task FilterPolishes {
  command <<<
    filterPolishes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ShiverFastaq {
  command <<<
    shiver_fastaq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
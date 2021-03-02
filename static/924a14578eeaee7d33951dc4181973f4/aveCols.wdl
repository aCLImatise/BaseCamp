version 1.0

task AveCols {
  command <<<
    aveCols
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Merlinoffline {
  command <<<
    merlin_offline
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
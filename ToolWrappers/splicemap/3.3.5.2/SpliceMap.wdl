version 1.0

task SpliceMap {
  command <<<
    SpliceMap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
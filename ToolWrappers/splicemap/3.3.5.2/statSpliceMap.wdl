version 1.0

task StatSpliceMap {
  command <<<
    statSpliceMap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
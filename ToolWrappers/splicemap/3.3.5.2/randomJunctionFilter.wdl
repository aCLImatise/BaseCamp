version 1.0

task RandomJunctionFilter {
  command <<<
    randomJunctionFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
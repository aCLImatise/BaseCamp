version 1.0

task UniqueJunctionFilter {
  command <<<
    uniqueJunctionFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
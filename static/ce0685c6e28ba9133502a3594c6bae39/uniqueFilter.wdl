version 1.0

task UniqueFilter {
  command <<<
    uniqueFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
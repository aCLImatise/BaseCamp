version 1.0

task LumpyFilter {
  command <<<
    lumpy_filter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
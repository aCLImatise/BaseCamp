version 1.0

task LengthFilter {
  command <<<
    lengthFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
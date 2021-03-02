version 1.0

task FilterNonConversion {
  command <<<
    filter_non_conversion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
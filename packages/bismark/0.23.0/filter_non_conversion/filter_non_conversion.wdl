version 1.0

task FilterNonConversion {
  command <<<
    filter_non_conversion
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}
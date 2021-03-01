version 1.0

task Wiggletools {
  command <<<
    wiggletools
  >>>
  runtime {
    docker: "quay.io/biocontainers/wiggletools:1.2.8--hebded25_0"
  }
  output {
    File out_stdout = stdout()
  }
}
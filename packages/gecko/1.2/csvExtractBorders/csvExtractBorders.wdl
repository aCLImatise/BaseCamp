version 1.0

task CsvExtractBorders {
  command <<<
    csvExtractBorders
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecko:1.2--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}
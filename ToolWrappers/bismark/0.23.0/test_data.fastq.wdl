version 1.0

task TestDatafastq {
  command <<<
    test_data_fastq
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}
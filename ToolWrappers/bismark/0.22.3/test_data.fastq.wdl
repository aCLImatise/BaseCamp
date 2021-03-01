version 1.0

task TestDatafastq {
  command <<<
    test_data_fastq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task TestDatafastq {
  command <<<
    test_data_fastq
  >>>
  output {
    File out_stdout = stdout()
  }
}
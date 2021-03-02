version 1.0

task FastqTests {
  command <<<
    fastq_tests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task FastqTests {
  command <<<
    fastq_tests
  >>>
  output {
    File out_stdout = stdout()
  }
}
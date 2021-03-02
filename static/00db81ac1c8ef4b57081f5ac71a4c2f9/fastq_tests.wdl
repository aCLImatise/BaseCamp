version 1.0

task FastqTests {
  command <<<
    fastq_tests
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1"
  }
  output {
    File out_stdout = stdout()
  }
}
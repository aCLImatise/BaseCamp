version 1.0

task FastqUtilsSort {
  input {
    String mate_one_input
    String mate_two_input
    String mate_one_output
  }
  command <<<
    fastq-utils sort \
      ~{mate_one_input} \
      ~{mate_two_input} \
      ~{mate_one_output}
  >>>
  parameter_meta {
    mate_one_input: ""
    mate_two_input: ""
    mate_one_output: ""
  }
}
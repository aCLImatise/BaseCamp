version 1.0

task FastqutilsSort {
  input {
    Int mate_one_input
    Int mate_two_input
    Int mate_one_output
  }
  command <<<
    fastq_utils sort \
      ~{mate_one_input} \
      ~{mate_two_input} \
      ~{mate_one_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    mate_one_input: ""
    mate_two_input: ""
    mate_one_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}
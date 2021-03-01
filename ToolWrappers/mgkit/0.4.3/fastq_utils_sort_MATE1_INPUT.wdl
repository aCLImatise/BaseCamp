version 1.0

task FastqutilsSortMATE1INPUT {
  input {
    Int mate_two_output
  }
  command <<<
    fastq_utils sort MATE1_INPUT \
      ~{mate_two_output}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mate_two_output: "Sort paired-end sequences from [mate1-input] and [mate2-input] into files"
  }
  output {
    File out_stdout = stdout()
  }
}
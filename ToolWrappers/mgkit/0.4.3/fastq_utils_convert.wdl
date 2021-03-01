version 1.0

task FastqutilsConvert {
  input {
    String? fast_q_file
    String? fast_a_file
  }
  command <<<
    fastq_utils convert \
      ~{fast_q_file} \
      ~{fast_a_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q_file: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
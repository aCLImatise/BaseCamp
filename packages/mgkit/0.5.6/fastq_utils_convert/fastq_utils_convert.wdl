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
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    fast_q_file: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
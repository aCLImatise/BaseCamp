version 1.0

task TrimmerpyReadsfilt1fq {
  input {
    String trimmer_do_tpy
    Int? input_one_dot_fq
    Int? input_two_dot_fq
    Int? output_one_dot_fq
    Int? output_two_dot_fq
  }
  command <<<
    trimmer_py reads_filt_1_fq \
      ~{trimmer_do_tpy} \
      ~{input_one_dot_fq} \
      ~{input_two_dot_fq} \
      ~{output_one_dot_fq} \
      ~{output_two_dot_fq}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  parameter_meta {
    trimmer_do_tpy: ""
    input_one_dot_fq: ""
    input_two_dot_fq: ""
    output_one_dot_fq: ""
    output_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}
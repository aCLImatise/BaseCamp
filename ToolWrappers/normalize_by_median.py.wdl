version 1.0

task Normalizebymedianpy {
  input {
    Int? k
    Boolean? info
    String tests_slash_test_data_slash_test_abund_read_paired_dot_fa
    String tests_slash_test_data_slash_test_fast_q_reads_dot_fq
  }
  command <<<
    normalize_by_median_py \
      ~{tests_slash_test_data_slash_test_abund_read_paired_dot_fa} \
      ~{tests_slash_test_data_slash_test_fast_q_reads_dot_fq} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  parameter_meta {
    k: ""
    info: ""
    tests_slash_test_data_slash_test_abund_read_paired_dot_fa: "Example:"
    tests_slash_test_data_slash_test_fast_q_reads_dot_fq: "Example:"
  }
  output {
    File out_stdout = stdout()
  }
}
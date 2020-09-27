version 1.0

task SequanaFastqSummary {
  input {
    String? pattern
    String se_quan_a_fast_q_count
  }
  command <<<
    sequana_fastq_summary \
      ~{se_quan_a_fast_q_count} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""}
  >>>
  parameter_meta {
    pattern: "input fastq gzipped or not"
    se_quan_a_fast_q_count: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SegmentJuncs {
  input {
    String ref_dot_fa
    String segment_dot_jun_cs
    String segment_dot_insertions
    String segment_dot_deletions
    String left_reads_dot_fq
    String left_reads_dot_bwt_out
  }
  command <<<
    segment_juncs \
      ~{ref_dot_fa} \
      ~{segment_dot_jun_cs} \
      ~{segment_dot_insertions} \
      ~{segment_dot_deletions} \
      ~{left_reads_dot_fq} \
      ~{left_reads_dot_bwt_out}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_dot_fa: ""
    segment_dot_jun_cs: ""
    segment_dot_insertions: ""
    segment_dot_deletions: ""
    left_reads_dot_fq: ""
    left_reads_dot_bwt_out: ""
  }
  output {
    File out_stdout = stdout()
  }
}
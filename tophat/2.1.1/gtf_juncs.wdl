version 1.0

task GtfJuncs {
  input {
    String transcripts_dot_gtf
  }
  command <<<
    gtf_juncs \
      ~{transcripts_dot_gtf}
  >>>
  parameter_meta {
    transcripts_dot_gtf: ""
  }
}
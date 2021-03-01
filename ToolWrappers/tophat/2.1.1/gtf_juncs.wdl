version 1.0

task GtfJuncs {
  input {
    String transcripts_dot_gtf
  }
  command <<<
    gtf_juncs \
      ~{transcripts_dot_gtf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    transcripts_dot_gtf: ""
  }
  output {
    File out_stdout = stdout()
  }
}
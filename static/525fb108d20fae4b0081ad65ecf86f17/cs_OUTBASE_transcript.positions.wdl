version 1.0

task CsOUTBASETranscriptpositions {
  input {
    String cs
  }
  command <<<
    cs OUTBASE_transcript_positions \
      ~{cs}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cs: ""
  }
  output {
    File out_stdout = stdout()
  }
}
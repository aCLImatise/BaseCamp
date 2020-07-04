version 1.0

task CsOUTBASETranscript.positions {
  input {
    String cs
  }
  command <<<
    cs OUTBASE_transcript.positions \
      ~{cs}
  >>>
  parameter_meta {
    cs: ""
  }
}
version 1.0

task MergeTranscriptSetspl {
  input {
    String transcripts_dot
    String set_ndot_gtf
  }
  command <<<
    merge_transcript_sets_pl \
      ~{transcripts_dot} \
      ~{set_ndot_gtf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    transcripts_dot: "Attention: nonredundant transcript names over all sets are assumed!"
    set_ndot_gtf: "file with gene predictions in gtf format"
  }
  output {
    File out_stdout = stdout()
  }
}
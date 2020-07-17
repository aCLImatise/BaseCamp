version 1.0

task MergeTranscriptSets.pl {
  input {
    String set_ndot_gtf
  }
  command <<<
    merge_transcript_sets.pl \
      ~{set_ndot_gtf}
  >>>
  parameter_meta {
    set_ndot_gtf: "file with gene predictions in gtf format"
  }
}
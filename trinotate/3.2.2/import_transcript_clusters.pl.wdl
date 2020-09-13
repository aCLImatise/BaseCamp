version 1.0

task ImportTranscriptClusterspl {
  command <<<
    import_transcript_clusters_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
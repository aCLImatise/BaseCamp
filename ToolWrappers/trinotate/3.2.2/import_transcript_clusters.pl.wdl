version 1.0

task ImportTranscriptClusterspl {
  command <<<
    import_transcript_clusters_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
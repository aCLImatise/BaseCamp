version 1.0

task SelectBestORFsPerTranscriptpl {
  command <<<
    select_best_ORFs_per_transcript_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
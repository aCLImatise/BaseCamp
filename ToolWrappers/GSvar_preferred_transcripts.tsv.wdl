version 1.0

task GSvarPreferredTranscriptstsv {
  command <<<
    GSvar_preferred_transcripts_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}
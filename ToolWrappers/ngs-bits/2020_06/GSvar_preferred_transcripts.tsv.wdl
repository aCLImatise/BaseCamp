version 1.0

task GSvarPreferredTranscriptstsv {
  command <<<
    GSvar_preferred_transcripts_tsv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
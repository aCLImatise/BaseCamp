version 1.0

task RemoveLongIntronReadthruTranscriptspl {
  command <<<
    remove_long_intron_readthru_transcripts_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
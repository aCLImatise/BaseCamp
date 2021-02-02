version 1.0

task RemoveLongIntronReadthruTranscriptspl {
  command <<<
    remove_long_intron_readthru_transcripts_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
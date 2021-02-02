version 1.0

task ImportTranscriptNamespl {
  command <<<
    import_transcript_names_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
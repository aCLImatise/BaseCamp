version 1.0

task ImportTranscriptNamespl {
  command <<<
    import_transcript_names_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
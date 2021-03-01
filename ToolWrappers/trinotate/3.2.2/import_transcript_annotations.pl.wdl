version 1.0

task ImportTranscriptAnnotationspl {
  command <<<
    import_transcript_annotations_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
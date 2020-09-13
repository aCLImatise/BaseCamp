version 1.0

task ExtractTranscriptEndspl {
  command <<<
    extractTranscriptEnds_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
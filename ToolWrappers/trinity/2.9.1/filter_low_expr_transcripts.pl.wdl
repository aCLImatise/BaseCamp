version 1.0

task FilterLowExprTranscriptspl {
  command <<<
    filter_low_expr_transcripts_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
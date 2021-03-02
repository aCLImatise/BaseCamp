version 1.0

task FilterLowExprTranscriptspl {
  command <<<
    filter_low_expr_transcripts_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
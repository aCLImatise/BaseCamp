version 1.0

task AnalyzeDiffExprpl {
  command <<<
    analyze_diff_expr_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
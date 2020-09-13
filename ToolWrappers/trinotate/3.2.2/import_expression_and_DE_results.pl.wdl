version 1.0

task ImportExpressionAndDEResultspl {
  command <<<
    import_expression_and_DE_results_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
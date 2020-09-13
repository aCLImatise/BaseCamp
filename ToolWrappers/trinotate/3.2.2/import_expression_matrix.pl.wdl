version 1.0

task ImportExpressionMatrixpl {
  command <<<
    import_expression_matrix_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ImportSamplesNExpressionMatrixpl {
  command <<<
    import_samples_n_expression_matrix_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
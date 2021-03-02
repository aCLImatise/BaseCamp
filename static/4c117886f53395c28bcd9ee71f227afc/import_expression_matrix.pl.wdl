version 1.0

task ImportExpressionMatrixpl {
  command <<<
    import_expression_matrix_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
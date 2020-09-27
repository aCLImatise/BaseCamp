version 1.0

task Ovisualizequalscoresalongcolumnspy {
  command <<<
    o_visualize_qual_scores_along_columns_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
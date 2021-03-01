version 1.0

task Osubsamplematrixfile {
  input {
    File? cols_to_remove
    File? rows_to_remove
    File? cols_to_keep
    File? rows_to_keep
    File? output_file
  }
  command <<<
    o_subsample_matrix_file \
      ~{if defined(cols_to_remove) then ("--cols-to-remove " +  '"' + cols_to_remove + '"') else ""} \
      ~{if defined(rows_to_remove) then ("--rows-to-remove " +  '"' + rows_to_remove + '"') else ""} \
      ~{if defined(cols_to_keep) then ("--cols-to-keep " +  '"' + cols_to_keep + '"') else ""} \
      ~{if defined(rows_to_keep) then ("--rows-to-keep " +  '"' + rows_to_keep + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cols_to_remove: "Columns to be removed from the matrix (one column id\\nin each line)"
    rows_to_remove: "Rows to be removed from the matrix (one row id in each\\nline)"
    cols_to_keep: "Columns to be kept in the subsampled matrix (one\\ncolumn id in each line)"
    rows_to_keep: "Rows to be kept in the subsampled matrix (one row id\\nin each line)"
    output_file: "Output file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
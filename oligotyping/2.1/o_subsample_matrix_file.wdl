version 1.0

task OSubsampleMatrixFile {
  input {
    File? cols_to_remove
    File? rows_to_remove
    File? cols_to_keep
    File? rows_to_keep
    String? output_file
    File file
  }
  command <<<
    o-subsample-matrix-file \
      ~{file} \
      ~{if defined(cols_to_remove) then ("--cols-to-remove " +  '"' + cols_to_remove + '"') else ""} \
      ~{if defined(rows_to_remove) then ("--rows-to-remove " +  '"' + rows_to_remove + '"') else ""} \
      ~{if defined(cols_to_keep) then ("--cols-to-keep " +  '"' + cols_to_keep + '"') else ""} \
      ~{if defined(rows_to_keep) then ("--rows-to-keep " +  '"' + rows_to_keep + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    cols_to_remove: "Columns to be removed from the matrix (one column id in each line)"
    rows_to_remove: "Rows to be removed from the matrix (one row id in each line)"
    cols_to_keep: "Columns to be kept in the subsampled matrix (one column id in each line)"
    rows_to_keep: "Rows to be kept in the subsampled matrix (one row id in each line)"
    output_file: "Output file name"
    file: "TAB delimited matrix to be processed"
  }
}
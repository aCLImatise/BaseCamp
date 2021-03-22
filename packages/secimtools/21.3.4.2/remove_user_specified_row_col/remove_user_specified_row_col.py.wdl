version 1.0

task RemoveUserSpecifiedRowColpy {
  input {
    Boolean? rowfeature_dropped_rowid
    Boolean? columnsample_dropped_beleft
    String? input_dataset_wide
    File? design
    String? id
    File? out_wide
  }
  command <<<
    remove_user_specified_row_col_py \
      ~{if (rowfeature_dropped_rowid) then "-r" else ""} \
      ~{if (columnsample_dropped_beleft) then "-c" else ""} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(out_wide) then ("--outWide " +  '"' + out_wide + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    rowfeature_dropped_rowid: "[ROW ...], --row [ROW ...]\\nRow/feature to be dropped - use rowID (can be left\\nempty)"
    columnsample_dropped_beleft: "[COL ...], --col [COL ...]\\nColumn/sample to be dropped - use column header(can be\\nleft empty)"
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    out_wide: "Output file without specified rows/columns.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_wide = "${in_out_wide}"
  }
}
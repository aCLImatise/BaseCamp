version 1.0

task CellTypesUtilsR {
  command <<<
    cell_types_utils_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/cell-types-analysis:0.1.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}
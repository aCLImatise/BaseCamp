version 1.0

task CellTypesUtilsR {
  command <<<
    cell_types_utils_R
  >>>
  output {
    File out_stdout = stdout()
  }
}
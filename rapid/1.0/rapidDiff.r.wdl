version 1.0

task RapidDiffr {
  input {
    String expand_dot_grid
    String lowess
  }
  command <<<
    rapidDiff_r \
      ~{expand_dot_grid} \
      ~{lowess}
  >>>
  parameter_meta {
    expand_dot_grid: "Loading required package: IRanges"
    lowess: "Error in file(file, \\\"rt\\\") : cannot open the connection"
  }
  output {
    File out_stdout = stdout()
  }
}
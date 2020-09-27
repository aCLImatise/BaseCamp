version 1.0

task Makmdm {
  input {
    Boolean? suppress_output_average
    Boolean? suppress_output_mdm
    Boolean? output_ludecomposited_matrix
    Boolean? output_power_matrices
    Boolean? _brosum_series
    Boolean? _vt_series
    Boolean? opt_dot_dot_dot
  }
  command <<<
    makmdm \
      ~{if (suppress_output_average) then "-c-" else ""} \
      ~{if (suppress_output_mdm) then "-m-" else ""} \
      ~{if (output_ludecomposited_matrix) then "-l" else ""} \
      ~{if (output_power_matrices) then "-p" else ""} \
      ~{if (_brosum_series) then "-b" else ""} \
      ~{if (_vt_series) then "-v" else ""} \
      ~{if (opt_dot_dot_dot) then "-opt..." else ""}
  >>>
  parameter_meta {
    suppress_output_average: ":    Suppress output of average compositions"
    suppress_output_mdm: ":    Suppress output of mdm matrix"
    output_ludecomposited_matrix: ":     Output LU-decomposited matrix"
    output_power_matrices: ":     Output power matrices"
    _brosum_series: ":     Brosum series"
    _vt_series: ":     VT series"
    opt_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}
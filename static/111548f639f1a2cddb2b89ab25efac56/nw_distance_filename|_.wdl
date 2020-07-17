version 1.0

task NwDistanceFilename|_ {
  input {
    Boolean? matrix_mode_print
  }
  command <<<
    nw_distance filename|- \
      ~{true="-t" false="" matrix_mode_print}
  >>>
  parameter_meta {
    matrix_mode_print: ": in matrix mode, print a triangular matrix. In other modes, print values on a line, separated by TABs."
  }
}
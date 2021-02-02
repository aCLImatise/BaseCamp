version 1.0

task RsatRescanmatrix {
  input {
    Boolean? iterations
    String rescan_matrix
    String jacques_dot_van_helden_backslash_at_univ_am_udot_fr
  }
  command <<<
    rsat rescan_matrix \
      ~{rescan_matrix} \
      ~{jacques_dot_van_helden_backslash_at_univ_am_udot_fr} \
      ~{if (iterations) then "-iterations" else ""}
  >>>
  parameter_meta {
    iterations: ") of site detection <-> matrix building. The process stops at"
    rescan_matrix: "[1mVERSION[0m"
    jacques_dot_van_helden_backslash_at_univ_am_udot_fr: "[1mCATEGORY[0m"
  }
  output {
    File out_stdout = stdout()
  }
}
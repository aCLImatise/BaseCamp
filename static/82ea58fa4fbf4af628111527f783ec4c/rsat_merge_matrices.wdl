version 1.0

task RsatMergematrices {
  input {
    String merge_matrices
    String pssm
    String width_dot
    String formats_dot
    String rescan_matrix_dot
  }
  command <<<
    rsat merge_matrices \
      ~{merge_matrices} \
      ~{pssm} \
      ~{width_dot} \
      ~{formats_dot} \
      ~{rescan_matrix_dot}
  >>>
  parameter_meta {
    merge_matrices: "[1mVERSION[0m"
    pssm: "[1mUSAGE[0m"
    width_dot: "[1mSEE ALSO[0m"
    formats_dot: "[1m-id matrix_ID[0m"
    rescan_matrix_dot: "[1m-o outputfile[0m"
  }
  output {
    File out_stdout = stdout()
  }
}
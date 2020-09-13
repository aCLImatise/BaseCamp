version 1.0

task RsatMatrixfrompatterns {
  input {
    String matrix_from_patterns
    String jvheldenatulbdotacdotbe
    String sequences
    String dyad_analysis_dot
    String strands
    String ones_dot
    String pss_mdot
  }
  command <<<
    rsat matrix_from_patterns \
      ~{matrix_from_patterns} \
      ~{jvheldenatulbdotacdotbe} \
      ~{sequences} \
      ~{dyad_analysis_dot} \
      ~{strands} \
      ~{ones_dot} \
      ~{pss_mdot}
  >>>
  parameter_meta {
    matrix_from_patterns: "[1mDESCRIPTION[0m"
    jvheldenatulbdotacdotbe: "[1mCATEGORY[0m"
    sequences: "motif discovery"
    dyad_analysis_dot: "[1m-toppat #[0m"
    strands: "[1m-1str[0m use a single strand to build the motifs"
    ones_dot: "[1m-sites[0m"
    pss_mdot: "[1m[33mmatrix-scan[0m[0m"
  }
  output {
    File out_stdout = stdout()
  }
}
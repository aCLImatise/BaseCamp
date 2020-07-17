version 1.0

task Motifscan {
  input {
    Boolean? v
    String config_configure_data
  }
  command <<<
    motifscan \
      ~{config_configure_data} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    config_configure_data: "config       Configure data paths for MotifScan. genome       Genome assembly commands. motif        Motif set (PFMs/PWMs) commands. scan         Scan input regions to detect motif occurrences."
  }
}
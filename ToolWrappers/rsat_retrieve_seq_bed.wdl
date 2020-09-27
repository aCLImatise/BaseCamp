version 1.0

task RsatRetrieveseqbed {
  input {
    String retrieve_seq_bed
    String jacques_dot_van_helden_backslash_at_univ_am_udot_fr
    String genome
  }
  command <<<
    rsat retrieve_seq_bed \
      ~{retrieve_seq_bed} \
      ~{jacques_dot_van_helden_backslash_at_univ_am_udot_fr} \
      ~{genome}
  >>>
  parameter_meta {
    retrieve_seq_bed: "[1mVERSION[0m"
    jacques_dot_van_helden_backslash_at_univ_am_udot_fr: "[1mCATEGORY[0m"
    genome: "[1mUSAGE[0m"
  }
  output {
    File out_stdout = stdout()
  }
}
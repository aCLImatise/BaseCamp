version 1.0

task BlPileupStats {
  input {
    Boolean? specify_pileup_file
    Boolean? specify_hist_file
    Boolean? specify_min_default
    String pile_up_stats
  }
  command <<<
    bl-pileup-stats \
      ~{pile_up_stats} \
      ~{true="-i" false="" specify_pileup_file} \
      ~{true="-o" false="" specify_hist_file} \
      ~{true="-m" false="" specify_min_default}
  >>>
  parameter_meta {
    specify_pileup_file: "specify the PILEUP input file"
    specify_hist_file: "specify the HIST output file"
    specify_min_default: "specify the min OVERLAP (default: 0)"
    pile_up_stats: ""
  }
}
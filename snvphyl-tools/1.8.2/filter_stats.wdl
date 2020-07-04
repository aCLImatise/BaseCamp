version 1.0

task FilterStats.pl {
  input {
    Boolean? psudoalignment_positions_tab
    Boolean? all
    String filter_stats_do_tpl
  }
  command <<<
    filter-stats.pl \
      ~{filter_stats_do_tpl} \
      ~{true="--input" false="" psudoalignment_positions_tab} \
      ~{true="--all" false="" all}
  >>>
  parameter_meta {
    psudoalignment_positions_tab: "The psudo-alignment positions tab delimited file"
    all: "When this option is set, the results will include all the entries marked as 'filtered-invalid'"
    filter_stats_do_tpl: ""
  }
}
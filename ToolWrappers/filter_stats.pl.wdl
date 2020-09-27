version 1.0

task Filterstatspl {
  input {
    Boolean? psudoalignment_positions_tab
    Boolean? all
    String filter_stats_do_tpl
  }
  command <<<
    filter_stats_pl \
      ~{filter_stats_do_tpl} \
      ~{if (psudoalignment_positions_tab) then "--input" else ""} \
      ~{if (all) then "--all" else ""}
  >>>
  parameter_meta {
    psudoalignment_positions_tab: "The psudo-alignment positions tab delimited file"
    all: "When this option is set, the results will include all the\\nentries marked as 'filtered-invalid'"
    filter_stats_do_tpl: ""
  }
  output {
    File out_stdout = stdout()
  }
}
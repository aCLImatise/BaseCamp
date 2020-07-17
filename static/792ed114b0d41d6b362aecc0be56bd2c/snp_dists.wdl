version 1.0

task SnpDists {
  input {
    Boolean? print_version_exit
    Boolean? quiet_mode_print
    Boolean? count_differences_just
    Boolean? keep_case_uppercase
    Boolean? output_molten_tsv
    Boolean? use_comma_tab
    Boolean? blank_top_left
  }
  command <<<
    snp-dists \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-q" false="" quiet_mode_print} \
      ~{true="-a" false="" count_differences_just} \
      ~{true="-k" false="" keep_case_uppercase} \
      ~{true="-m" false="" output_molten_tsv} \
      ~{true="-c" false="" use_comma_tab} \
      ~{true="-b" false="" blank_top_left}
  >>>
  parameter_meta {
    print_version_exit: "Print version and exit"
    quiet_mode_print: "Quiet mode; do not print progress information"
    count_differences_just: "Count all differences not just [AGTC]"
    keep_case_uppercase: "Keep case, don't uppercase all letters"
    output_molten_tsv: "Output MOLTEN instead of TSV"
    use_comma_tab: "Use comma instead of tab in output"
    blank_top_left: "Blank top left corner cell"
  }
}
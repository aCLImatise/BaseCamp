version 1.0

task Snpdists {
  input {
    Boolean? print_version_exit
    Boolean? quiet_mode_print
    Boolean? count_differences_just
    Boolean? keep_case_uppercase
    Boolean? output_molten_instead
    Boolean? use_comma_tab
    Boolean? blank_top_left
  }
  command <<<
    snp_dists \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (quiet_mode_print) then "-q" else ""} \
      ~{if (count_differences_just) then "-a" else ""} \
      ~{if (keep_case_uppercase) then "-k" else ""} \
      ~{if (output_molten_instead) then "-m" else ""} \
      ~{if (use_comma_tab) then "-c" else ""} \
      ~{if (blank_top_left) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_version_exit: "Print version and exit"
    quiet_mode_print: "Quiet mode; do not print progress information"
    count_differences_just: "Count all differences not just [AGTC]"
    keep_case_uppercase: "Keep case, don't uppercase all letters"
    output_molten_instead: "Output MOLTEN instead of TSV"
    use_comma_tab: "Use comma instead of tab in output"
    blank_top_left: "Blank top left corner cell"
  }
  output {
    File out_stdout = stdout()
  }
}
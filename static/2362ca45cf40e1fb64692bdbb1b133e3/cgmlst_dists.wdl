version 1.0

task CgmlstDists {
  input {
    Boolean? print_version_exit
    Boolean? quiet_mode_print
    Boolean? use_comma_tab
    String? output_uppertri_full
  }
  command <<<
    cgmlst-dists \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-q" false="" quiet_mode_print} \
      ~{true="-c" false="" use_comma_tab} \
      ~{if defined(output_uppertri_full) then ("-m " +  '"' + output_uppertri_full + '"') else ""}
  >>>
  parameter_meta {
    print_version_exit: "Print version and exit"
    quiet_mode_print: "Quiet mode; do not print progress information"
    use_comma_tab: "Use comma instead of tab in output"
    output_uppertri_full: "Output: 1=lower-tri 2=upper-tri 3=full [3]"
  }
}
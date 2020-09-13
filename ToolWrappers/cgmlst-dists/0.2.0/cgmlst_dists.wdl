version 1.0

task Cgmlstdists {
  input {
    Boolean? print_version_exit
    Boolean? quiet_mode_print
    Boolean? use_comma_instead
    Int? output_lowertri_uppertri
  }
  command <<<
    cgmlst_dists \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (quiet_mode_print) then "-q" else ""} \
      ~{if (use_comma_instead) then "-c" else ""} \
      ~{if defined(output_lowertri_uppertri) then ("-m " +  '"' + output_lowertri_uppertri + '"') else ""}
  >>>
  parameter_meta {
    print_version_exit: "Print version and exit"
    quiet_mode_print: "Quiet mode; do not print progress information"
    use_comma_instead: "Use comma instead of tab in output"
    output_lowertri_uppertri: "Output: 1=lower-tri 2=upper-tri 3=full [3]"
  }
  output {
    File out_stdout = stdout()
  }
}
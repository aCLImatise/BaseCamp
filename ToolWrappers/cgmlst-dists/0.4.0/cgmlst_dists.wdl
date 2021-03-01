version 1.0

task Cgmlstdists {
  input {
    Boolean? print_version_exit
    Boolean? quiet_mode_print
    Boolean? use_comma_tab
    Int? output_lowertri_uppertri
    Int? stop_calculating_distance
  }
  command <<<
    cgmlst_dists \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (quiet_mode_print) then "-q" else ""} \
      ~{if (use_comma_tab) then "-c" else ""} \
      ~{if defined(output_lowertri_uppertri) then ("-m " +  '"' + output_lowertri_uppertri + '"') else ""} \
      ~{if defined(stop_calculating_distance) then ("-x " +  '"' + stop_calculating_distance + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cgmlst-dists:0.4.0--h516909a_0"
  }
  parameter_meta {
    print_version_exit: "Print version and exit"
    quiet_mode_print: "Quiet mode; do not print progress information"
    use_comma_tab: "Use comma instead of tab in output"
    output_lowertri_uppertri: "Output: 1=lower-tri 2=upper-tri 3=full [3]"
    stop_calculating_distance: "Stop calculating beyond this distance [9999]"
  }
  output {
    File out_stdout = stdout()
  }
}
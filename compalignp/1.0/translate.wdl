version 1.0

task Translate {
  input {
    Boolean? translate_full_stops
    Int? report_only_orfs
    Boolean? require_orfs_start
    String? save_results_output
    Boolean? quiet_silence_banner
    String? set_stop_character
    Boolean? options
    String seq_file
  }
  command <<<
    translate \
      ~{seq_file} \
      ~{true="-a" false="" translate_full_stops} \
      ~{if defined(report_only_orfs) then ("-l " +  '"' + report_only_orfs + '"') else ""} \
      ~{true="-m" false="" require_orfs_start} \
      ~{if defined(save_results_output) then ("-o " +  '"' + save_results_output + '"') else ""} \
      ~{true="-q" false="" quiet_silence_banner} \
      ~{if defined(set_stop_character) then ("-s " +  '"' + set_stop_character + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    translate_full_stops: ": translate in full, with stops; no individual ORFs"
    report_only_orfs: ": report only ORFs greater than minlen (default 20)"
    require_orfs_start: ": require ORFs to start with AUG/Met"
    save_results_output: ": save results in output file"
    quiet_silence_banner: ": quiet; silence banner, for piping or redirection"
    set_stop_character: ": with -a, set stop character to <stopchar>"
    options: ""
    seq_file: ""
  }
}
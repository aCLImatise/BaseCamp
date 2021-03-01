version 1.0

task Translate {
  input {
    Boolean? translate_individual_orfs
    Int? report_orfs_greater
    Boolean? require_orfs_start
    File? save_results_output
    Boolean? quiet_silence_banner
    String? set_stop_character
    Boolean? options
    String seq_file
  }
  command <<<
    translate \
      ~{seq_file} \
      ~{if (translate_individual_orfs) then "-a" else ""} \
      ~{if defined(report_orfs_greater) then ("-l " +  '"' + report_orfs_greater + '"') else ""} \
      ~{if (require_orfs_start) then "-m" else ""} \
      ~{if defined(save_results_output) then ("-o " +  '"' + save_results_output + '"') else ""} \
      ~{if (quiet_silence_banner) then "-q" else ""} \
      ~{if defined(set_stop_character) then ("-s " +  '"' + set_stop_character + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    translate_individual_orfs: ": translate in full, with stops; no individual ORFs"
    report_orfs_greater: ": report only ORFs greater than minlen (default 20)"
    require_orfs_start: ": require ORFs to start with AUG/Met"
    save_results_output: ": save results in output file"
    quiet_silence_banner: ": quiet; silence banner, for piping or redirection"
    set_stop_character: ": with -a, set stop character to <stopchar>"
    options: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_save_results_output = "${in_save_results_output}"
  }
}
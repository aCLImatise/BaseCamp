version 1.0

task Tboxscan {
  input {
    File? save_final_results
    File? save_infernal_predictions
    File? save_txt_log
    Boolean? model_search_tboxes
    Int? score_cutoff_infernal
    Boolean? save_verbose_output
    Boolean? silence_console_output
    Boolean? var_7
    File? f
    String file_input_fasta
  }
  command <<<
    tbox_scan \
      ~{file_input_fasta} \
      ~{if defined(save_final_results) then ("-o " +  '"' + save_final_results + '"') else ""} \
      ~{if defined(save_infernal_predictions) then ("-i " +  '"' + save_infernal_predictions + '"') else ""} \
      ~{if defined(save_txt_log) then ("-l " +  '"' + save_txt_log + '"') else ""} \
      ~{if (model_search_tboxes) then "-m" else ""} \
      ~{if defined(score_cutoff_infernal) then ("-c " +  '"' + score_cutoff_infernal + '"') else ""} \
      ~{if (save_verbose_output) then "-v" else ""} \
      ~{if (silence_console_output) then "-s" else ""} \
      ~{if (var_7) then "-options" else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    save_final_results: ": save final results in <file> as .csv\\ndefault: out.csv"
    save_infernal_predictions: ": save INFERNAL output predictions to .txt <file>\\ndefault: INFERNAL.txt"
    save_txt_log: ": save a .txt log <file> of pipeline output"
    model_search_tboxes: "<model#> : search for T-boxes using different covariance models\\n1: RFAM model (RFAM00230.cm), finds mostly class I transcriptional T-boxes (default)\\n2: Translational Ile (TBDB001.cm), finds mostly class II translational T-boxes"
    score_cutoff_infernal: ": score cutoff for INFERNAL model predictions (default = 15)"
    save_verbose_output: ": save verbose output"
    silence_console_output: ": silence console output"
    var_7: ""
    f: ""
    file_input_fasta: "-f <file>  : input FASTA <file> (required)"
  }
  output {
    File out_stdout = stdout()
    File out_save_final_results = "${in_save_final_results}"
    File out_save_infernal_predictions = "${in_save_infernal_predictions}"
    File out_save_txt_log = "${in_save_txt_log}"
  }
}
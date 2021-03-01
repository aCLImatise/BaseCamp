version 1.0

task RunLefsepy {
  input {
    File? set_file_textualform
    Float? set_value_anova
    Float? set_value_wilcoxon
    Float? set_threshold_absolute
    Int? n_logs
    Int? verbose
    Int? wil_c
    Int? select_lda_svm
    Int? svm_norm
    Int? set_number_bootstrap
    Int? set_perform_only
    Int? set_ing_curtissapproach
    Float? set_subsampling_value
    String? set_multiple_options
    Int? min_c
    File? set_title_analysis
    String? multiclass_tasks_set
    String input_file
    String output_file
    String module
  }
  command <<<
    run_lefse_py \
      ~{input_file} \
      ~{output_file} \
      ~{module} \
      ~{if defined(set_file_textualform) then ("-o " +  '"' + set_file_textualform + '"') else ""} \
      ~{if defined(set_value_anova) then ("-a " +  '"' + set_value_anova + '"') else ""} \
      ~{if defined(set_value_wilcoxon) then ("-w " +  '"' + set_value_wilcoxon + '"') else ""} \
      ~{if defined(set_threshold_absolute) then ("-l " +  '"' + set_threshold_absolute + '"') else ""} \
      ~{if defined(n_logs) then ("--nlogs " +  '"' + n_logs + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(wil_c) then ("--wilc " +  '"' + wil_c + '"') else ""} \
      ~{if defined(select_lda_svm) then ("-r " +  '"' + select_lda_svm + '"') else ""} \
      ~{if defined(svm_norm) then ("--svm_norm " +  '"' + svm_norm + '"') else ""} \
      ~{if defined(set_number_bootstrap) then ("-b " +  '"' + set_number_bootstrap + '"') else ""} \
      ~{if defined(set_perform_only) then ("-e " +  '"' + set_perform_only + '"') else ""} \
      ~{if defined(set_ing_curtissapproach) then ("-c " +  '"' + set_ing_curtissapproach + '"') else ""} \
      ~{if defined(set_subsampling_value) then ("-f " +  '"' + set_subsampling_value + '"') else ""} \
      ~{if defined(set_multiple_options) then ("-s " +  '"' + set_multiple_options + '"') else ""} \
      ~{if defined(min_c) then ("--min_c " +  '"' + min_c + '"') else ""} \
      ~{if defined(set_title_analysis) then ("-t " +  '"' + set_title_analysis + '"') else ""} \
      ~{if defined(multiclass_tasks_set) then ("-y " +  '"' + multiclass_tasks_set + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_file_textualform: "set the file for exporting the result (only concise textual\\nform)"
    set_value_anova: "set the alpha value for the Anova test (default 0.05)"
    set_value_wilcoxon: "set the alpha value for the Wilcoxon test (default 0.05)"
    set_threshold_absolute: "set the threshold on the absolute value of the logarithmic\\nLDA score (default 2.0)"
    n_logs: "max log ingluence of LDA coeff"
    verbose: "verbose execution (default 0)"
    wil_c: "wheter to perform the Wicoxon step (default 1)"
    select_lda_svm: "select LDA or SVM for effect size (default LDA)"
    svm_norm: "whether to normalize the data in [0,1] for SVM feature\\nwaiting (default 1 strongly suggested)"
    set_number_bootstrap: "set the number of bootstrap iteration for LDA (default 30)"
    set_perform_only: "set whether perform the wilcoxon test only among the\\nsubclasses with the same name (default 0)"
    set_ing_curtissapproach: "set whether perform the wilcoxon test ing the Curtis's\\napproach [BETA VERSION] (default 0)"
    set_subsampling_value: "set the subsampling fraction value for each bootstrap\\niteration (default 0.66666)"
    set_multiple_options: "set the multiple testing correction options. 0 no correction\\n(more strict, default), 1 correction for independent\\ncomparisons, 2 correction for independent comparison"
    min_c: "minimum number of samples per subclass for performing\\nwilcoxon test (default 10)"
    set_title_analysis: "set the title of the analysis (default input file without\\nextension)"
    multiclass_tasks_set: "(for multiclass tasks) set whether the test is performed in\\na one-against-one ( 1 - more strict!) or in a one-against-\\nall setting ( 0 - less strict) (default 0)\\n"
    input_file: "the input file"
    output_file: "the output file containing the data for the visualization"
    module: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}
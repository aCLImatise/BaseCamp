version 1.0

task PeakachuWindow {
  input {
    Array[String] exp_libs
    Array[String] ctr_libs
    Boolean? pairwise_replicates
    Boolean? paired_end
    Int? max_insert_size
    Directory? gff_folder
    Boolean? features
    Boolean? sub_features
    Int? max_proc
    Int? window_size
    Int? step_size
    String? stat_test
    String? norm_method
    Boolean? normalization_factors_libraries
    String? mad_multiplier
    String? fc_cut_off
    String? het_p_val_threshold
    String? rep_pair_p_val_threshold
    String? pad_j_threshold
    Directory? output_folder
  }
  command <<<
    peakachu window \
      ~{if defined(exp_libs) then ("--exp_libs " +  '"' + exp_libs + '"') else ""} \
      ~{if defined(ctr_libs) then ("--ctr_libs " +  '"' + ctr_libs + '"') else ""} \
      ~{if (pairwise_replicates) then "--pairwise_replicates" else ""} \
      ~{if (paired_end) then "--paired_end" else ""} \
      ~{if defined(max_insert_size) then ("--max_insert_size " +  '"' + max_insert_size + '"') else ""} \
      ~{if defined(gff_folder) then ("--gff_folder " +  '"' + gff_folder + '"') else ""} \
      ~{if (features) then "--features" else ""} \
      ~{if (sub_features) then "--sub_features" else ""} \
      ~{if defined(max_proc) then ("--max_proc " +  '"' + max_proc + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(step_size) then ("--step_size " +  '"' + step_size + '"') else ""} \
      ~{if defined(stat_test) then ("--stat_test " +  '"' + stat_test + '"') else ""} \
      ~{if defined(norm_method) then ("--norm_method " +  '"' + norm_method + '"') else ""} \
      ~{if (normalization_factors_libraries) then "-s" else ""} \
      ~{if defined(mad_multiplier) then ("--mad_multiplier " +  '"' + mad_multiplier + '"') else ""} \
      ~{if defined(fc_cut_off) then ("--fc_cutoff " +  '"' + fc_cut_off + '"') else ""} \
      ~{if defined(het_p_val_threshold) then ("--het_p_val_threshold " +  '"' + het_p_val_threshold + '"') else ""} \
      ~{if defined(rep_pair_p_val_threshold) then ("--rep_pair_p_val_threshold " +  '"' + rep_pair_p_val_threshold + '"') else ""} \
      ~{if defined(pad_j_threshold) then ("--padj_threshold " +  '"' + pad_j_threshold + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""}
  >>>
  parameter_meta {
    exp_libs: ""
    ctr_libs: ""
    pairwise_replicates: ""
    paired_end: ""
    max_insert_size: ""
    gff_folder: ""
    features: "[FEATURES [FEATURES ...]]"
    sub_features: "[SUB_FEATURES [SUB_FEATURES ...]]"
    max_proc: ""
    window_size: ""
    step_size: ""
    stat_test: ""
    norm_method: ""
    normalization_factors_libraries: "[SIZE_FACTORS [SIZE_FACTORS ...]], --size_factors [SIZE_FACTORS [SIZE_FACTORS ...]]\\nNormalization factors for libraries in input order\\n(first experiment then control libraries)"
    mad_multiplier: ""
    fc_cut_off: ""
    het_p_val_threshold: ""
    rep_pair_p_val_threshold: ""
    pad_j_threshold: ""
    output_folder: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}
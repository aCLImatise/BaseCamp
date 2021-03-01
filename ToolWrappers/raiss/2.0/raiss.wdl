version 1.0

task Raiss {
  input {
    String? chrom
    String? g_was
    Directory? ref_folder
    Directory? ld_folder
    Directory? zscore_folder
    Directory? output_folder
    Int? window_size
    Int? buffer_size
    Int? l_two_regularization
    String? eigen_threshold
    Int? r_two_threshold
    String? ref_panel_suffix
  }
  command <<<
    raiss \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(g_was) then ("--gwas " +  '"' + g_was + '"') else ""} \
      ~{if defined(ref_folder) then ("--ref-folder " +  '"' + ref_folder + '"') else ""} \
      ~{if defined(ld_folder) then ("--ld-folder " +  '"' + ld_folder + '"') else ""} \
      ~{if defined(zscore_folder) then ("--zscore-folder " +  '"' + zscore_folder + '"') else ""} \
      ~{if defined(output_folder) then ("--output-folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(l_two_regularization) then ("--l2-regularization " +  '"' + l_two_regularization + '"') else ""} \
      ~{if defined(eigen_threshold) then ("--eigen-threshold " +  '"' + eigen_threshold + '"') else ""} \
      ~{if defined(r_two_threshold) then ("--R2-threshold " +  '"' + r_two_threshold + '"') else ""} \
      ~{if defined(ref_panel_suffix) then ("--ref-panel-suffix " +  '"' + ref_panel_suffix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chrom: "chromosome to impute to the chr\\d+ format"
    g_was: "GWAS to impute to the consortia_trait format"
    ref_folder: "reference panel location (used to determine which snp\\nto impute)"
    ld_folder: "Location LD correlation matrices"
    zscore_folder: "Location of the zscore files of the gwases to impute"
    output_folder: "Location of the impute zscore files"
    window_size: "Size of the non overlapping window"
    buffer_size: "Size of the buffer around the imputation window"
    l_two_regularization: "Size of the small value added to the diagonal of the\\ncovariance matrix before inversion"
    eigen_threshold: "threshold under which eigen vectors are removed for\\nthe computation of the pseudo inverse"
    r_two_threshold: "R square (imputation quality) threshold bellow which\\nSNPs are filtered from the output"
    ref_panel_suffix: "end of the suffix for the reference panel files\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}
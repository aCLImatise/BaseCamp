version 1.0

task JassPreprocessing {
  input {
    Directory? diagnostic_folder
    File? g_was_info
    File? ref_path
    Directory? output_folder
    File? output_folder_one_file
    Int? percent_sample_size
    String? minimum_maf
    String? mask_mhc
    Int? additional_masked_region
  }
  command <<<
    jass_preprocessing \
      ~{if defined(diagnostic_folder) then ("--diagnostic-folder " +  '"' + diagnostic_folder + '"') else ""} \
      ~{if defined(g_was_info) then ("--gwas-info " +  '"' + g_was_info + '"') else ""} \
      ~{if defined(ref_path) then ("--ref-path " +  '"' + ref_path + '"') else ""} \
      ~{if defined(output_folder) then ("--output-folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(output_folder_one_file) then ("--output-folder-1-file " +  '"' + output_folder_one_file + '"') else ""} \
      ~{if defined(percent_sample_size) then ("--percent-sample-size " +  '"' + percent_sample_size + '"') else ""} \
      ~{if defined(minimum_maf) then ("--minimum-MAF " +  '"' + minimum_maf + '"') else ""} \
      ~{if defined(mask_mhc) then ("--mask-MHC " +  '"' + mask_mhc + '"') else ""} \
      ~{if defined(additional_masked_region) then ("--additional-masked-region " +  '"' + additional_masked_region + '"') else ""}
  >>>
  parameter_meta {
    diagnostic_folder: "DIAGNOSTIC_FOLDER --output-folder OUTPUT_FOLDER\\n[--output-folder-1-file OUTPUT_FOLDER_1_FILE]\\n[--percent-sample-size PERCENT_SAMPLE_SIZE]\\n[--minimum-MAF MINIMUM_MAF] [--mask-MHC MASK_MHC]\\n[--additional-masked-region ADDITIONAL_MASKED_REGION]"
    g_was_info: "Path to the file describing the format of the\\nindividual GWASs files with correct header"
    ref_path: "reference panel location (used to determine which snp\\nto impute)"
    output_folder: "Location of main ouput folder for preprocessed GWAS\\nfiles (splitted by chromosome)"
    output_folder_one_file: "optional location to store the preprocessing in one\\ntabular file with one chromosome columns (useful to\\ncompute LDSC correlation for instance)"
    percent_sample_size: "the proportion (between 0 and 1) of the 90th\\npercentile of the sample size used to filter the SNPs"
    minimum_maf: "Filter the reference panel by minimum allele frequency"
    mask_mhc: "Whether the MHC region should be masked or not.\\ndefault is False"
    additional_masked_region: "List of dictionary containing coordinate of region to\\nmask. For example :[{'chr':6, 'start':50000000, 'end':\\n70000000}, {'chr':6, 'start':100000000, 'end':\\n120000000}]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
    File out_output_folder_one_file = "${in_output_folder_one_file}"
  }
}
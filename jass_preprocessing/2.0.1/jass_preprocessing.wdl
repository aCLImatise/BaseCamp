version 1.0

task JassPreprocessing {
  input {
    String? g_was_info
    String? ref_path
    String? input_folder
    String? diagnostic_folder
    String? output_folder
    String? output_folder_one_file
    String? percent_sample_size
    Int? minimum_maf
    String? mask_mhc
    String? additional_masked_region
  }
  command <<<
    jass_preprocessing \
      ~{if defined(g_was_info) then ("--gwas-info " +  '"' + g_was_info + '"') else ""} \
      ~{if defined(ref_path) then ("--ref-path " +  '"' + ref_path + '"') else ""} \
      ~{if defined(input_folder) then ("--input-folder " +  '"' + input_folder + '"') else ""} \
      ~{if defined(diagnostic_folder) then ("--diagnostic-folder " +  '"' + diagnostic_folder + '"') else ""} \
      ~{if defined(output_folder) then ("--output-folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(output_folder_one_file) then ("--output-folder-1-file " +  '"' + output_folder_one_file + '"') else ""} \
      ~{if defined(percent_sample_size) then ("--percent-sample-size " +  '"' + percent_sample_size + '"') else ""} \
      ~{if defined(minimum_maf) then ("--minimum-MAF " +  '"' + minimum_maf + '"') else ""} \
      ~{if defined(mask_mhc) then ("--mask-MHC " +  '"' + mask_mhc + '"') else ""} \
      ~{if defined(additional_masked_region) then ("--additional-masked-region " +  '"' + additional_masked_region + '"') else ""}
  >>>
  parameter_meta {
    g_was_info: "Path to the file describing the format of the individual GWASs files with correct header"
    ref_path: "reference panel location (used to determine which snp to impute)"
    input_folder: "Path to the folder containing the Raw GWASs summary statistic files, must end by '/'"
    diagnostic_folder: "Path to the reporting information on the PreProcessing such as the SNPs sample size distribution"
    output_folder: "Location of main ouput folder for preprocessed GWAS files (splitted by chromosome)"
    output_folder_one_file: "optional location to store the preprocessing in one tabular file with one chromosome columns (useful to compute LDSC correlation for instance)"
    percent_sample_size: "the proportion (between 0 and 1) of the 90th percentile of the sample size used to filter the SNPs"
    minimum_maf: "Filter the reference panel by minimum allele frequency"
    mask_mhc: "Whether the MHC region should be masked or not. default is False"
    additional_masked_region: "List of dictionary containing coordinate of region to mask. For example :[{'chr':6, 'start':50000000, 'end': 70000000}, {'chr':6, 'start':100000000, 'end': 120000000}]"
  }
}
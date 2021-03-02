version 1.0

task GetExperimentDataR {
  input {
    String? access_sion_code
    File? config_file
    String? matrix_type
    Boolean? decorated_rows
    Directory? output_dir_name
    Boolean? use_default_expr_names
    Directory? exp_data_dir
    Boolean? get_sd_rf
    Boolean? get_condensed_sd_rf
    Boolean? get_idf
    Boolean? get_exp_design
    Boolean? get_marker_genes
    Int? number_of_clusters
    Boolean? use_full_names
  }
  command <<<
    get_experiment_data_R \
      ~{if defined(access_sion_code) then ("--accesssion-code " +  '"' + access_sion_code + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(matrix_type) then ("--matrix-type " +  '"' + matrix_type + '"') else ""} \
      ~{if (decorated_rows) then "--decorated-rows" else ""} \
      ~{if defined(output_dir_name) then ("--output-dir-name " +  '"' + output_dir_name + '"') else ""} \
      ~{if (use_default_expr_names) then "--use-default-expr-names" else ""} \
      ~{if defined(exp_data_dir) then ("--exp-data-dir " +  '"' + exp_data_dir + '"') else ""} \
      ~{if (get_sd_rf) then "--get-sdrf" else ""} \
      ~{if (get_condensed_sd_rf) then "--get-condensed-sdrf" else ""} \
      ~{if (get_idf) then "--get-idf" else ""} \
      ~{if (get_exp_design) then "--get-exp-design" else ""} \
      ~{if (get_marker_genes) then "--get-marker-genes" else ""} \
      ~{if defined(number_of_clusters) then ("--number-of-clusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if (use_full_names) then "--use-full-names" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    access_sion_code: "Accession code of the data set to be extracted"
    config_file: "Config file in .yaml format"
    matrix_type: "Type of expression data to download. Must be one of 'raw', 'filtered', 'TPM' or 'CPM'"
    decorated_rows: "Should the decorated version of row names be downloaded? Deafult: FALSE"
    output_dir_name: "Name of the output directory containing study data. Default directory name is the provided accession code"
    use_default_expr_names: "Should default (non 10x-type) file names be used for expression data? Default: FALSE"
    exp_data_dir: "Output name for expression data directory"
    get_sd_rf: "Should SDRF file(s) be downloaded? Default: FALSE"
    get_condensed_sd_rf: "Should condensed SDRF file(s) be downloaded? Default: FALSE"
    get_idf: "Should IDF file(s) be downloaded? Default: FALSE"
    get_exp_design: "Should experimental design file be downloaded? Default: FALSE"
    get_marker_genes: "Should marker gene file(s) be downloaded? Default: FALSE"
    number_of_clusters: "Number of clusters for marker gene file"
    use_full_names: "Should non-expression data files be named with full file names? Default: FALSE"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir_name = "${in_output_dir_name}"
    Directory out_exp_data_dir = "${in_exp_data_dir}"
  }
}
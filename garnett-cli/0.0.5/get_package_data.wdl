version 1.0

task GetPackageData.R {
  input {
    String? marker_file
    String? expr_matrix
    String? pheno_data
    String? feature_data
    String? output_dir
  }
  command <<<
    get_package_data.R \
      ~{if defined(marker_file) then ("--marker-file " +  '"' + marker_file + '"') else ""} \
      ~{if defined(expr_matrix) then ("--expr-matrix " +  '"' + expr_matrix + '"') else ""} \
      ~{if defined(pheno_data) then ("--pheno-data " +  '"' + pheno_data + '"') else ""} \
      ~{if defined(feature_data) then ("--feature-data " +  '"' + feature_data + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    marker_file: "Path for marker file"
    expr_matrix: "Output path for expression matrix"
    pheno_data: "Output path for phenotype data"
    feature_data: "Output path for feature data"
    output_dir: "Output path for feature data"
  }
}
version 1.0

task Imputationpy {
  input {
    String? s
    String? input_dataset_wide
    File? design
    String? id
    String? group
    File? path_output_file
    String? strategy
    Boolean? no_zero
    Boolean? no_negative
    String? exclude
    Float? row_cut_off
    String? distribution
    Int? knn
    Float? col_cut_off
  }
  command <<<
    imputation_py \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""} \
      ~{if (no_zero) then "--no_zero" else ""} \
      ~{if (no_negative) then "--no_negative" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(row_cut_off) then ("--row_cutoff " +  '"' + row_cut_off + '"') else ""} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""} \
      ~{if defined(knn) then ("--knn " +  '"' + knn + '"') else ""} \
      ~{if defined(col_cut_off) then ("--col_cutoff " +  '"' + col_cut_off + '"') else ""}
  >>>
  parameter_meta {
    s: "[-noz] [-noneg]"
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of the column with groups."
    path_output_file: "Path of output file."
    strategy: "Imputation strategy: KNN, mean, median, or most\\nfrequent"
    no_zero: "Treat 0 as missing?"
    no_negative: "Treat negative as missing?"
    exclude: "Additional values to treat as missingdata, seperated\\nby commas"
    row_cut_off: "Percent cutoff for imputation of rows.If this is\\nexceeded, imputation willbe done by mean instead of\\nknn. Default: .5"
    distribution: "use mean or median to generate mu value for bayesian\\nimputation"
    knn: "Number of nearest neighbors to search Default: 5."
    col_cut_off: "Percent cutoff forimputation of columns. If this is\\nexceeded, imputationwill be done by mean instead of\\nknn. Default: .8\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}
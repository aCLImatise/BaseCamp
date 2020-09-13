version 1.0

task LocationPredictorFit {
  input {
    File? input_file
    File? model_file
    File? gene_domain_score_file_name
    File? output_dir
    Array[String] selected_column_names
    Int? window_size
    Int? complexity
    Int? nbits
    Int? n_discretization_levels
    Int? label_size
    Int? min_subarray_size
    Int? max_subarray_size
  }
  command <<<
    location_predictor fit \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(gene_domain_score_file_name) then ("--gene-domain-score-file-name " +  '"' + gene_domain_score_file_name + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(selected_column_names) then ("--selected-column-names " +  '"' + selected_column_names + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(complexity) then ("--complexity " +  '"' + complexity + '"') else ""} \
      ~{if defined(nbits) then ("--nbits " +  '"' + nbits + '"') else ""} \
      ~{if defined(n_discretization_levels) then ("--n_discretization-levels " +  '"' + n_discretization_levels + '"') else ""} \
      ~{if defined(label_size) then ("--label-size " +  '"' + label_size + '"') else ""} \
      ~{if defined(min_subarray_size) then ("--min-subarray-size " +  '"' + min_subarray_size + '"') else ""} \
      ~{if defined(max_subarray_size) then ("--max-subarray-size " +  '"' + max_subarray_size + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Path to file containing input. (default: None)"
    model_file: "Path to a fit model file. (default: model)"
    gene_domain_score_file_name: "... (default: gene_domain_score)"
    output_dir: "Path to output directory. (default: out)"
    selected_column_names: ".... (default: None)"
    window_size: "... (default: 2)"
    complexity: "... (default: 4)"
    nbits: "... (default: 20)"
    n_discretization_levels: "... (default: 100)"
    label_size: "... (default: 5)"
    min_subarray_size: "... (default: 3)"
    max_subarray_size: "... (default: 15)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}
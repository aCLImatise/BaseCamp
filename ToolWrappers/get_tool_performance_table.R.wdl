version 1.0

task GetToolPerformanceTableR {
  input {
    File? input_dir
    File? ref_file
    Boolean? parallel
    Int? num_cores
    File? exclusions
    File? tmpdir
    File? ontology_graph
    File? lab_cl_mapping
    File? barcode_col_ref
    File? barcode_col_pred
    File? label_column_ref
    File? label_column_pred
    Int? semantic_sim_metric
    Boolean? include_sem_sim_l
    File? output_path
  }
  command <<<
    get_tool_performance_table_R \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(ref_file) then ("--ref-file " +  '"' + ref_file + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if defined(num_cores) then ("--num-cores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(exclusions) then ("--exclusions " +  '"' + exclusions + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(ontology_graph) then ("--ontology-graph " +  '"' + ontology_graph + '"') else ""} \
      ~{if defined(lab_cl_mapping) then ("--lab-cl-mapping " +  '"' + lab_cl_mapping + '"') else ""} \
      ~{if defined(barcode_col_ref) then ("--barcode-col-ref " +  '"' + barcode_col_ref + '"') else ""} \
      ~{if defined(barcode_col_pred) then ("--barcode-col-pred " +  '"' + barcode_col_pred + '"') else ""} \
      ~{if defined(label_column_ref) then ("--label-column-ref " +  '"' + label_column_ref + '"') else ""} \
      ~{if defined(label_column_pred) then ("--label-column-pred " +  '"' + label_column_pred + '"') else ""} \
      ~{if defined(semantic_sim_metric) then ("--semantic-sim-metric " +  '"' + semantic_sim_metric + '"') else ""} \
      ~{if (include_sem_sim_l) then "--include-sem-siml" else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""}
  >>>
  parameter_meta {
    input_dir: "Path to the directory with standardised output .tsv files from multiple\\nmethods"
    ref_file: "Path to the file with reference, \\\"true\\\" cell type assignments"
    parallel: "Boolean: Should computation be run in parallel? Default: FALSE"
    num_cores: "Number of cores to run the process on. Default: all available cores. --parallel must be set to \\\"true\\\" for this to take effect"
    exclusions: "Path to the yaml file with excluded terms. Must contain fields 'unlabelled' and 'trivial_terms'"
    tmpdir: "Cache directory path"
    ontology_graph: "Path to the ontology graph in .obo or .xml format. Import link can also be provided."
    lab_cl_mapping: "Path to serialised object containing cell label - CL terms mapping"
    barcode_col_ref: "Name of the cell id field in reference file"
    barcode_col_pred: "Name of the cell id field in prediction file"
    label_column_ref: "Name of the label column in reference file"
    label_column_pred: "Name of the label column in prediction file"
    semantic_sim_metric: "Semantic similarity scoring method. Must be supported by Onassis\\npackage. See listSimilarities()$pairwiseMeasures for a list\\nof accepted options.\\nNB: if included in combined score calculation, make sure to select a metric with values in the [0;1] range."
    include_sem_sim_l: "Should semantic similarity be included into combined score calculation? Default: FALSE.\\nIf setting to TRUE, note that this confines the options on semantic similarity metric\\nto those with range in the [0;1] interval only."
    output_path: "Path to the output table in .tsv format"
  }
  output {
    File out_stdout = stdout()
    File out_input_dir = "${in_input_dir}"
    File out_output_path = "${in_output_path}"
  }
}
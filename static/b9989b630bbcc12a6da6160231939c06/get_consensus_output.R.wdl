version 1.0

task GetConsensusOutputR {
  input {
    File? input_dir
    File? tool_table
    Boolean? parallel
    Int? num_cores
    File? cl_dictionary
    File? exclusions
    File? tmpdir
    File? ontology_graph
    Int? semantic_sim_metric
    Boolean? include_sem_sim_l
    Boolean? sort_by_agg_score
    File? true_labels
    File? summary_table_output_path
    File? raw_table_output_path
  }
  command <<<
    get_consensus_output_R \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(tool_table) then ("--tool-table " +  '"' + tool_table + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if defined(num_cores) then ("--num-cores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(cl_dictionary) then ("--cl-dictionary " +  '"' + cl_dictionary + '"') else ""} \
      ~{if defined(exclusions) then ("--exclusions " +  '"' + exclusions + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(ontology_graph) then ("--ontology-graph " +  '"' + ontology_graph + '"') else ""} \
      ~{if defined(semantic_sim_metric) then ("--semantic-sim-metric " +  '"' + semantic_sim_metric + '"') else ""} \
      ~{if (include_sem_sim_l) then "--include-sem-siml" else ""} \
      ~{if (sort_by_agg_score) then "--sort-by-agg-score" else ""} \
      ~{if defined(true_labels) then ("--true-labels " +  '"' + true_labels + '"') else ""} \
      ~{if defined(summary_table_output_path) then ("--summary-table-output-path " +  '"' + summary_table_output_path + '"') else ""} \
      ~{if defined(raw_table_output_path) then ("--raw-table-output-path " +  '"' + raw_table_output_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cell-types-analysis:0.1.11--0"
  }
  parameter_meta {
    input_dir: "Path to the directory with standardised .tsv files from multiple\\nmethods"
    tool_table: "Path to the tool evaluation table in text format"
    parallel: "Boolean: Should computation be run in parallel? Default: FALSE"
    num_cores: "Number of cores to run the process on. Default: all available cores.\\n--parallel must be set to \\\"true\\\" for this to take effect"
    cl_dictionary: "Path to the mapping between labels and CL terms in .rds format"
    exclusions: "Path to the yaml file with excluded terms. Must contain fields\\n'unlabelled' and 'trivial_terms'"
    tmpdir: "Cache directory path"
    ontology_graph: "Path to the ontology graph in .obo or .xml format.\\nImport link can also be provided."
    semantic_sim_metric: "Semantic similarity scoring method.\\nMust be supported by Onassis package.\\nSee listSimilarities()$pairwiseMeasures for a list of accepted\\noptions. NB: if included in combined score calculation,\\nmake sure to select a metric with values in the [0;1] range."
    include_sem_sim_l: "Should semantic similarity be included into combined score\\ncalculation? Default: FALSE. If setting to TRUE, note that this\\nconfines the options on semantic similarity metric\\nto those with range in the [0;1] interval only."
    sort_by_agg_score: "Should cells be sorted by their aggregated scores? Default: TRUE"
    true_labels: "(OPTIONAL) Path to the true labels tsv file in case tool\\nperformance is evaluated. Expected columns: cell_id, true_label, ontology_term"
    summary_table_output_path: "Path to the output table with top labels and per-cell metrics in .tsv format"
    raw_table_output_path: "Path to the output table with all labels in .tsv format"
  }
  output {
    File out_stdout = stdout()
    File out_summary_table_output_path = "${in_summary_table_output_path}"
    File out_raw_table_output_path = "${in_raw_table_output_path}"
  }
}
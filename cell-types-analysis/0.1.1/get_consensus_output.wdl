version 1.0

task GetConsensusOutput.R {
  input {
    String? input_dir
    String? tool_table
    Boolean? parallel
    String? num_cores
    String? cl_dictionary
    String? exclusions
    String? tmpdir
    String? ontology_graph
    String? semantic_sim_metric
    Boolean? include_sem_sim_l
    Boolean? sort_by_agg_score
    String? summary_table_output_path
    String? raw_table_output_path
  }
  command <<<
    get_consensus_output.R \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(tool_table) then ("--tool-table " +  '"' + tool_table + '"') else ""} \
      ~{true="--parallel" false="" parallel} \
      ~{if defined(num_cores) then ("--num-cores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(cl_dictionary) then ("--cl-dictionary " +  '"' + cl_dictionary + '"') else ""} \
      ~{if defined(exclusions) then ("--exclusions " +  '"' + exclusions + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(ontology_graph) then ("--ontology-graph " +  '"' + ontology_graph + '"') else ""} \
      ~{if defined(semantic_sim_metric) then ("--semantic-sim-metric " +  '"' + semantic_sim_metric + '"') else ""} \
      ~{true="--include-sem-siml" false="" include_sem_sim_l} \
      ~{true="--sort-by-agg-score" false="" sort_by_agg_score} \
      ~{if defined(summary_table_output_path) then ("--summary-table-output-path " +  '"' + summary_table_output_path + '"') else ""} \
      ~{if defined(raw_table_output_path) then ("--raw-table-output-path " +  '"' + raw_table_output_path + '"') else ""}
  >>>
  parameter_meta {
    input_dir: "Path to the directory with standardised .tsv files from multiple methods"
    tool_table: "Path to the tool evaluation table in text format"
    parallel: "Boolean: Should computation be run in parallel? Default: FALSE"
    num_cores: "Number of cores to run the process on. Default: all available cores. --parallel must be set to \"true\" for this to take effect"
    cl_dictionary: "Path to the mapping between labels and CL terms in .rds format"
    exclusions: "Path to the yaml file with excluded terms. Must contain fields 'unlabelled' and 'trivial_terms'"
    tmpdir: "Cache directory path"
    ontology_graph: "Path to the ontology graph in .obo or .xml format. Import link can also be provided."
    semantic_sim_metric: "Semantic similarity scoring method.  Must be supported by Onassis package. See listSimilarities()$pairwiseMeasures for a list of accepted options. NB: if included in combined score calculation, make sure to select a metric with values in the [0;1] range."
    include_sem_sim_l: "Should semantic similarity be included into combined score calculation? Default: FALSE. If setting to TRUE, note that this confines the options on semantic similarity metric to those with range in the [0;1] interval only."
    sort_by_agg_score: "Should cells be sorted by their aggregated scores? Default: TRUE"
    summary_table_output_path: "Path to the output table with top labels and per-cell metrics in .tsv format"
    raw_table_output_path: "Path to the output table with all labels in .tsv format"
  }
}
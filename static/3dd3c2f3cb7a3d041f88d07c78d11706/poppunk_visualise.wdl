version 1.0

task PoppunkVisualise {
  input {
    String? ref_db
    String? query_db
    File? include_files
    File? external_clustering
    Directory? model_dir
    File? previous_clustering
    File? previous_query_clustering
    File? network_file
    String? display_cluster
    String? prefix_output_required
    Boolean? overwrite
    Boolean? core_only
    Boolean? accessory_only
    Boolean? micro_react
    Boolean? cytoscape
    Boolean? p_handango
    Boolean? grape_tree
    String? tree
    String? mst_distances
    File? rapid_nj
    Float? perplexity
    String? info_csv
    Int? threads
    Boolean? gpu_dist
    Boolean? gpu_graph
    Int? deviceid
    Boolean? strand_preserved
    String query
  }
  command <<<
    poppunk_visualise \
      ~{query} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(query_db) then ("--query-db " +  '"' + query_db + '"') else ""} \
      ~{if defined(include_files) then ("--include-files " +  '"' + include_files + '"') else ""} \
      ~{if defined(external_clustering) then ("--external-clustering " +  '"' + external_clustering + '"') else ""} \
      ~{if defined(model_dir) then ("--model-dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(previous_clustering) then ("--previous-clustering " +  '"' + previous_clustering + '"') else ""} \
      ~{if defined(previous_query_clustering) then ("--previous-query-clustering " +  '"' + previous_query_clustering + '"') else ""} \
      ~{if defined(network_file) then ("--network-file " +  '"' + network_file + '"') else ""} \
      ~{if defined(display_cluster) then ("--display-cluster " +  '"' + display_cluster + '"') else ""} \
      ~{if defined(prefix_output_required) then ("--output " +  '"' + prefix_output_required + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (core_only) then "--core-only" else ""} \
      ~{if (accessory_only) then "--accessory-only" else ""} \
      ~{if (micro_react) then "--microreact" else ""} \
      ~{if (cytoscape) then "--cytoscape" else ""} \
      ~{if (p_handango) then "--phandango" else ""} \
      ~{if (grape_tree) then "--grapetree" else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(mst_distances) then ("--mst-distances " +  '"' + mst_distances + '"') else ""} \
      ~{if defined(rapid_nj) then ("--rapidnj " +  '"' + rapid_nj + '"') else ""} \
      ~{if defined(perplexity) then ("--perplexity " +  '"' + perplexity + '"') else ""} \
      ~{if defined(info_csv) then ("--info-csv " +  '"' + info_csv + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (gpu_dist) then "--gpu-dist" else ""} \
      ~{if (gpu_graph) then "--gpu-graph" else ""} \
      ~{if defined(deviceid) then ("--deviceid " +  '"' + deviceid + '"') else ""} \
      ~{if (strand_preserved) then "--strand-preserved" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0"
  }
  parameter_meta {
    ref_db: "Location of built reference database"
    query_db: "Location of query database, if distances are from ref-"
    include_files: "File with list of sequences to include in\\nvisualisation. Default is to use all sequences in\\ndatabase."
    external_clustering: "File with cluster definitions or other labels\\ngenerated with any other method."
    model_dir: "Directory containing model to use for assigning\\nqueries to clusters [default = reference database\\ndirectory]"
    previous_clustering: "File containing previous cluster definitions and\\nnetwork [default = use that in the directory\\ncontaining the model]"
    previous_query_clustering: "File containing previous cluster definitions from\\npoppunk_assign [default = use that in the directory of\\nthe query database]"
    network_file: "Specify a file to use for any graph visualisations"
    display_cluster: "Column of clustering CSV to use for plotting"
    prefix_output_required: "Prefix for output files (required)"
    overwrite: "Overwrite any existing visualisation files"
    core_only: "(with a 'refine' model) Use a core-distance only model\\nfor assigning queries [default = False]"
    accessory_only: "(with a 'refine' or 'lineage' model) Use an accessory-\\ndistance only model for assigning queries [default =\\nFalse]"
    micro_react: "Generate output files for microreact visualisation"
    cytoscape: "Generate network output files for Cytoscape"
    p_handango: "Generate phylogeny and TSV for Phandango visualisation"
    grape_tree: "Generate phylogeny and CSV for grapetree visualisation"
    tree: "Type of tree to calculate [default = nj]"
    mst_distances: "Distances used to calculate a minimum spanning tree\\n[default = core]"
    rapid_nj: "Path to rapidNJ binary to build NJ tree for Microreact"
    perplexity: "Perplexity used to calculate t-SNE projection (with\\n--microreact) [default=20.0]"
    info_csv: "Epidemiological information CSV formatted for\\nmicroreact (can be used with other outputs)"
    threads: "Number of threads to use [default = 1]"
    gpu_dist: "Use a GPU when calculating distances [default = False]"
    gpu_graph: "Use a GPU when calculating graphs [default = False]"
    deviceid: "CUDA device ID, if using GPU [default = 0]"
    strand_preserved: "If distances being calculated, treat strand as known\\nwhen calculating random match chances [default =\\nFalse]"
    query: "--distances DISTANCES"
  }
  output {
    File out_stdout = stdout()
  }
}
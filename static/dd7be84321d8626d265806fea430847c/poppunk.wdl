version 1.0

task Poppunk {
  input {
    Boolean? easy_run
    Boolean? create_db
    Boolean? fit_model
    Boolean? refine_model
    Boolean? assign_query
    Boolean? generate_viz
    String? threshold
    Boolean? use_model
    String? ref_db
    String? r_files
    String? q_files
    String? distances
    String? external_clustering
    String? prefix_output_files
    String? plot_fit
    Boolean? full_db
    Boolean? update_db
    Boolean? overwrite
    Int? min_k
    Int? max_k
    String? k_step
    String? sketch_size
    Int? min_km_er_count
    Boolean? exact_count
    Boolean? strand_preserved
    Int? max_a_dist
    Boolean? ignore_length
    String? estimated_length
    String? maximum_number_mixture
    Boolean? dbs_can
    String? maximum_number_clusters
    Int? min_cluster_prop
    String? pos_shift
    String? neg_shift
    String? manual_start
    Boolean? indiv_refine
    Boolean? no_local
    String? model_dir
    String? previous_clustering
    Boolean? core_only
    Boolean? accessory_only
    String? subset
    Boolean? micro_react
    Boolean? cytoscape
    Boolean? p_handango
    Boolean? grape_tree
    String? rapid_nj
    String? perplexity
    String? info_csv
    Boolean? use_mash
    String? mash
    String? threads
    Boolean? use_gpu
    String? deviceid
    Boolean? no_stream
  }
  command <<<
    poppunk \
      ~{true="--easy-run" false="" easy_run} \
      ~{true="--create-db" false="" create_db} \
      ~{true="--fit-model" false="" fit_model} \
      ~{true="--refine-model" false="" refine_model} \
      ~{true="--assign-query" false="" assign_query} \
      ~{true="--generate-viz" false="" generate_viz} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--use-model" false="" use_model} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(r_files) then ("--r-files " +  '"' + r_files + '"') else ""} \
      ~{if defined(q_files) then ("--q-files " +  '"' + q_files + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(external_clustering) then ("--external-clustering " +  '"' + external_clustering + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(plot_fit) then ("--plot-fit " +  '"' + plot_fit + '"') else ""} \
      ~{true="--full-db" false="" full_db} \
      ~{true="--update-db" false="" update_db} \
      ~{true="--overwrite" false="" overwrite} \
      ~{if defined(min_k) then ("--min-k " +  '"' + min_k + '"') else ""} \
      ~{if defined(max_k) then ("--max-k " +  '"' + max_k + '"') else ""} \
      ~{if defined(k_step) then ("--k-step " +  '"' + k_step + '"') else ""} \
      ~{if defined(sketch_size) then ("--sketch-size " +  '"' + sketch_size + '"') else ""} \
      ~{if defined(min_km_er_count) then ("--min-kmer-count " +  '"' + min_km_er_count + '"') else ""} \
      ~{true="--exact-count" false="" exact_count} \
      ~{true="--strand-preserved" false="" strand_preserved} \
      ~{if defined(max_a_dist) then ("--max-a-dist " +  '"' + max_a_dist + '"') else ""} \
      ~{true="--ignore-length" false="" ignore_length} \
      ~{if defined(estimated_length) then ("--estimated-length " +  '"' + estimated_length + '"') else ""} \
      ~{if defined(maximum_number_mixture) then ("--K " +  '"' + maximum_number_mixture + '"') else ""} \
      ~{true="--dbscan" false="" dbs_can} \
      ~{if defined(maximum_number_clusters) then ("--D " +  '"' + maximum_number_clusters + '"') else ""} \
      ~{if defined(min_cluster_prop) then ("--min-cluster-prop " +  '"' + min_cluster_prop + '"') else ""} \
      ~{if defined(pos_shift) then ("--pos-shift " +  '"' + pos_shift + '"') else ""} \
      ~{if defined(neg_shift) then ("--neg-shift " +  '"' + neg_shift + '"') else ""} \
      ~{if defined(manual_start) then ("--manual-start " +  '"' + manual_start + '"') else ""} \
      ~{true="--indiv-refine" false="" indiv_refine} \
      ~{true="--no-local" false="" no_local} \
      ~{if defined(model_dir) then ("--model-dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(previous_clustering) then ("--previous-clustering " +  '"' + previous_clustering + '"') else ""} \
      ~{true="--core-only" false="" core_only} \
      ~{true="--accessory-only" false="" accessory_only} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{true="--microreact" false="" micro_react} \
      ~{true="--cytoscape" false="" cytoscape} \
      ~{true="--phandango" false="" p_handango} \
      ~{true="--grapetree" false="" grape_tree} \
      ~{if defined(rapid_nj) then ("--rapidnj " +  '"' + rapid_nj + '"') else ""} \
      ~{if defined(perplexity) then ("--perplexity " +  '"' + perplexity + '"') else ""} \
      ~{if defined(info_csv) then ("--info-csv " +  '"' + info_csv + '"') else ""} \
      ~{true="--use-mash" false="" use_mash} \
      ~{if defined(mash) then ("--mash " +  '"' + mash + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--use-gpu" false="" use_gpu} \
      ~{if defined(deviceid) then ("--deviceid " +  '"' + deviceid + '"') else ""} \
      ~{true="--no-stream" false="" no_stream}
  >>>
  parameter_meta {
    easy_run: "Create clusters from assemblies with default settings"
    create_db: "Create pairwise distances database between reference sequences"
    fit_model: "Fit a mixture model to a reference database"
    refine_model: "Refine the accuracy of a fitted model"
    assign_query: "Assign the cluster of query sequences without re- running the whole mixture model"
    generate_viz: "Generate files for a visualisation from an existing database"
    threshold: "Create model at this core distance threshold"
    use_model: "Apply a fitted model to a reference database to restore database files"
    ref_db: "Location of built reference database"
    r_files: "File listing reference input assemblies"
    q_files: "File listing query input assemblies"
    distances: "Prefix of input pickle of pre-calculated distances"
    external_clustering: "File with cluster definitions or other labels generated with any other method."
    prefix_output_files: "Prefix for output files (required)"
    plot_fit: "Create this many plots of some fits relating k-mer to core/accessory distances [default = 0]"
    full_db: "Keep full reference database, not just representatives"
    update_db: "Update reference database with query sequences"
    overwrite: "Overwrite any existing database files"
    min_k: "Minimum kmer length [default = 9]"
    max_k: "Maximum kmer length [default = 29]"
    k_step: "K-mer step size [default = 4]"
    sketch_size: "Kmer sketch size [default = 10000]"
    min_km_er_count: "Minimum k-mer count when using reads as input [default = 0]"
    exact_count: "Use the exact k-mer counter with reads [default = use countmin counter]"
    strand_preserved: "Treat input as being on the same strand, and ignore reverse complement k-mers [default = use canonical k-mers]"
    max_a_dist: "Maximum accessory distance to permit [default = 0.5]"
    ignore_length: "Ignore outliers in terms of assembly length [default = False]"
    estimated_length: "Provide an integer estimated genome length when using \"--ignore-length\" [default = 2000000]"
    maximum_number_mixture: "Maximum number of mixture components [default = 2]"
    dbs_can: "Use DBSCAN rather than mixture model"
    maximum_number_clusters: "Maximum number of clusters in DBSCAN fitting [default = 100]"
    min_cluster_prop: "Minimum proportion of points in a cluster in DBSCAN fitting [default = 0.0001]"
    pos_shift: "Maximum amount to move the boundary away from origin [default = 0.2]"
    neg_shift: "Maximum amount to move the boundary towards the origin [default = 0.4]"
    manual_start: "A file containing information for a start point. See documentation for help."
    indiv_refine: "Also run refinement for core and accessory individually"
    no_local: "Do not perform the local optimization step (speed up on very large datasets)"
    model_dir: "Directory containing model to use for assigning queries to clusters [default = reference database directory]"
    previous_clustering: "Directory containing previous cluster definitions and network [default = use that in the directory containing the model]"
    core_only: "Use a core-distance only model for assigning queries [default = False]"
    accessory_only: "Use an accessory-distance only model for assigning queries [default = False]"
    subset: "File with list of sequences to include in visualisation (with --generate-viz only)"
    micro_react: "Generate output files for microreact visualisation"
    cytoscape: "Generate network output files for Cytoscape"
    p_handango: "Generate phylogeny and TSV for Phandango visualisation"
    grape_tree: "Generate phylogeny and CSV for grapetree visualisation"
    rapid_nj: "Path to rapidNJ binary to build NJ tree for Microreact"
    perplexity: "Perplexity used to calculate t-SNE projection (with --microreact) [default=20.0]"
    info_csv: "Epidemiological information CSV formatted for microreact (can be used with other outputs)"
    use_mash: "Use the old mash sketch backend [default = False]"
    mash: "Location of mash executable"
    threads: "Number of threads to use [default = 1]"
    use_gpu: "Use a GPU when calculating distances [default = False]"
    deviceid: "CUDA device ID, if using GPU [default = 0]"
    no_stream: "Use temporary files for mash dist interfacing. Reduce memory use/increase disk use for large datasets"
  }
}
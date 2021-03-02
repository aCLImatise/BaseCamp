version 1.0

task Poppunk {
  input {
    Boolean? easy_run
    Boolean? create_db
    Boolean? refine_model
    Boolean? assign_query
    Boolean? generate_viz
    Boolean? use_model
    String? ref_db
    File? r_files
    File? q_files
    String? distances
    File? external_clustering
    String? prefix_output_required
    Int? plot_fit
    Boolean? full_db
    Boolean? update_db
    Boolean? overwrite
    Int? min_k
    Int? max_k
    Int? k_step
    Int? sketch_size
    Int? min_km_er_count
    Boolean? exact_count
    Boolean? strand_preserved
    Int? max_a_dist
    Boolean? ignore_length
    Int? estimated_length
    Int? maximum_number_mixture
    Boolean? dbs_can
    Int? maximum_number_default
    Int? min_cluster_prop
    Float? pos_shift
    Float? neg_shift
    File? manual_start
    Boolean? indiv_refine
    Directory? model_dir
    Directory? previous_clustering
    Boolean? core_only
    Boolean? accessory_only
    File? subset
    Boolean? micro_react
    Boolean? cytoscape
    Boolean? p_handango
    Boolean? grape_tree
    File? rapid_nj
    Float? perplexity
    String? info_csv
    Boolean? use_mash
    String? mash
    Int? threads
    Boolean? use_gpu
    Int? deviceid
    Boolean? no_stream
    String sequences
    String database
    String individually
  }
  command <<<
    poppunk \
      ~{sequences} \
      ~{database} \
      ~{individually} \
      ~{if (easy_run) then "--easy-run" else ""} \
      ~{if (create_db) then "--create-db" else ""} \
      ~{if (refine_model) then "--refine-model" else ""} \
      ~{if (assign_query) then "--assign-query" else ""} \
      ~{if (generate_viz) then "--generate-viz" else ""} \
      ~{if (use_model) then "--use-model" else ""} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(r_files) then ("--r-files " +  '"' + r_files + '"') else ""} \
      ~{if defined(q_files) then ("--q-files " +  '"' + q_files + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(external_clustering) then ("--external-clustering " +  '"' + external_clustering + '"') else ""} \
      ~{if defined(prefix_output_required) then ("--output " +  '"' + prefix_output_required + '"') else ""} \
      ~{if defined(plot_fit) then ("--plot-fit " +  '"' + plot_fit + '"') else ""} \
      ~{if (full_db) then "--full-db" else ""} \
      ~{if (update_db) then "--update-db" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(min_k) then ("--min-k " +  '"' + min_k + '"') else ""} \
      ~{if defined(max_k) then ("--max-k " +  '"' + max_k + '"') else ""} \
      ~{if defined(k_step) then ("--k-step " +  '"' + k_step + '"') else ""} \
      ~{if defined(sketch_size) then ("--sketch-size " +  '"' + sketch_size + '"') else ""} \
      ~{if defined(min_km_er_count) then ("--min-kmer-count " +  '"' + min_km_er_count + '"') else ""} \
      ~{if (exact_count) then "--exact-count" else ""} \
      ~{if (strand_preserved) then "--strand-preserved" else ""} \
      ~{if defined(max_a_dist) then ("--max-a-dist " +  '"' + max_a_dist + '"') else ""} \
      ~{if (ignore_length) then "--ignore-length" else ""} \
      ~{if defined(estimated_length) then ("--estimated-length " +  '"' + estimated_length + '"') else ""} \
      ~{if defined(maximum_number_mixture) then ("--K " +  '"' + maximum_number_mixture + '"') else ""} \
      ~{if (dbs_can) then "--dbscan" else ""} \
      ~{if defined(maximum_number_default) then ("--D " +  '"' + maximum_number_default + '"') else ""} \
      ~{if defined(min_cluster_prop) then ("--min-cluster-prop " +  '"' + min_cluster_prop + '"') else ""} \
      ~{if defined(pos_shift) then ("--pos-shift " +  '"' + pos_shift + '"') else ""} \
      ~{if defined(neg_shift) then ("--neg-shift " +  '"' + neg_shift + '"') else ""} \
      ~{if defined(manual_start) then ("--manual-start " +  '"' + manual_start + '"') else ""} \
      ~{if (indiv_refine) then "--indiv-refine" else ""} \
      ~{if defined(model_dir) then ("--model-dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(previous_clustering) then ("--previous-clustering " +  '"' + previous_clustering + '"') else ""} \
      ~{if (core_only) then "--core-only" else ""} \
      ~{if (accessory_only) then "--accessory-only" else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if (micro_react) then "--microreact" else ""} \
      ~{if (cytoscape) then "--cytoscape" else ""} \
      ~{if (p_handango) then "--phandango" else ""} \
      ~{if (grape_tree) then "--grapetree" else ""} \
      ~{if defined(rapid_nj) then ("--rapidnj " +  '"' + rapid_nj + '"') else ""} \
      ~{if defined(perplexity) then ("--perplexity " +  '"' + perplexity + '"') else ""} \
      ~{if defined(info_csv) then ("--info-csv " +  '"' + info_csv + '"') else ""} \
      ~{if (use_mash) then "--use-mash" else ""} \
      ~{if defined(mash) then ("--mash " +  '"' + mash + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (use_gpu) then "--use-gpu" else ""} \
      ~{if defined(deviceid) then ("--deviceid " +  '"' + deviceid + '"') else ""} \
      ~{if (no_stream) then "--no-stream" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    easy_run: "Create clusters from assemblies with default settings"
    create_db: "Create pairwise distances database between reference"
    refine_model: "Refine the accuracy of a fitted model"
    assign_query: "Assign the cluster of query sequences without re-\\nrunning the whole mixture model"
    generate_viz: "Generate files for a visualisation from an existing"
    use_model: "Apply a fitted model to a reference database to\\nrestore database files"
    ref_db: "Location of built reference database"
    r_files: "File listing reference input assemblies"
    q_files: "File listing query input assemblies"
    distances: "Prefix of input pickle of pre-calculated distances"
    external_clustering: "File with cluster definitions or other labels\\ngenerated with any other method."
    prefix_output_required: "Prefix for output files (required)"
    plot_fit: "Create this many plots of some fits relating k-mer to\\ncore/accessory distances [default = 0]"
    full_db: "Keep full reference database, not just representatives"
    update_db: "Update reference database with query sequences"
    overwrite: "Overwrite any existing database files"
    min_k: "Minimum kmer length [default = 9]"
    max_k: "Maximum kmer length [default = 29]"
    k_step: "K-mer step size [default = 4]"
    sketch_size: "Kmer sketch size [default = 10000]"
    min_km_er_count: "Minimum k-mer count when using reads as input [default\\n= 0]"
    exact_count: "Use the exact k-mer counter with reads [default = use\\ncountmin counter]"
    strand_preserved: "Treat input as being on the same strand, and ignore\\nreverse complement k-mers [default = use canonical\\nk-mers]"
    max_a_dist: "Maximum accessory distance to permit [default = 0.5]"
    ignore_length: "Ignore outliers in terms of assembly length [default =\\nFalse]"
    estimated_length: "Provide an integer estimated genome length when using\\n\\\"--ignore-length\\\" [default = 2000000]"
    maximum_number_mixture: "Maximum number of mixture components [default = 2]"
    dbs_can: "Use DBSCAN rather than mixture model"
    maximum_number_default: "Maximum number of clusters in DBSCAN fitting [default\\n= 100]"
    min_cluster_prop: "Minimum proportion of points in a cluster in DBSCAN\\nfitting [default = 0.0001]"
    pos_shift: "Maximum amount to move the boundary away from origin\\n[default = 0.2]"
    neg_shift: "Maximum amount to move the boundary towards the origin\\n[default = 0.4]"
    manual_start: "A file containing information for a start point. See\\ndocumentation for help."
    indiv_refine: "Also run refinement for core and accessory"
    model_dir: "Directory containing model to use for assigning\\nqueries to clusters [default = reference database\\ndirectory]"
    previous_clustering: "Directory containing previous cluster definitions and\\nnetwork [default = use that in the directory\\ncontaining the model]"
    core_only: "Use a core-distance only model for assigning queries\\n[default = False]"
    accessory_only: "Use an accessory-distance only model for assigning\\nqueries [default = False]"
    subset: "File with list of sequences to include in\\nvisualisation (with --generate-viz only)"
    micro_react: "Generate output files for microreact visualisation"
    cytoscape: "Generate network output files for Cytoscape"
    p_handango: "Generate phylogeny and TSV for Phandango visualisation"
    grape_tree: "Generate phylogeny and CSV for grapetree visualisation"
    rapid_nj: "Path to rapidNJ binary to build NJ tree for Microreact"
    perplexity: "Perplexity used to calculate t-SNE projection (with\\n--microreact) [default=20.0]"
    info_csv: "Epidemiological information CSV formatted for\\nmicroreact (can be used with other outputs)"
    use_mash: "Use the old mash sketch backend [default = False]"
    mash: "Location of mash executable"
    threads: "Number of threads to use [default = 1]"
    use_gpu: "Use a GPU when calculating distances [default = False]"
    deviceid: "CUDA device ID, if using GPU [default = 0]"
    no_stream: "Use temporary files for mash dist interfacing. Reduce\\nmemory use/increase disk use for large datasets"
    sequences: "--fit-model           Fit a mixture model to a reference database"
    database: "--threshold THRESHOLD"
    individually: "--no-local            Do not perform the local optimization step (speed up"
  }
  output {
    File out_stdout = stdout()
  }
}
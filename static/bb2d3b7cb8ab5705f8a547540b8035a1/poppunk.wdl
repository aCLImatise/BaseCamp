version 1.0

task Poppunk {
  input {
    Boolean? create_db
    Boolean? use_model
    String? ref_db
    File? r_files
    String? distances
    File? external_clustering
    String? prefix_output_files
    Int? plot_fit
    Boolean? overwrite
    Boolean? graph_weights
    Int? min_k
    Int? max_k
    Int? k_step
    Int? sketch_size
    Boolean? codon_phased
    Int? min_km_er_count
    Boolean? exact_count
    Boolean? strand_preserved
    String? qc_filter
    Boolean? retain_failures
    Int? max_a_dist
    Int? length_sigma
    Int? length_range
    Float? prop_n
    String? upper_n
    Int? maximum_number_mixture
    Int? maximum_number_default
    Int? min_cluster_prop
    String? threshold
    String? pos_shift
    String? neg_shift
    File? manual_start
    String? indiv_refine
    Boolean? no_local
    Directory? model_dir
    String? core_only
    Int? ranks
    Boolean? use_accessory
    Int? threads
    Boolean? gpu_sketch
    Boolean? gpu_dist
    Int? deviceid
    String sequences
  }
  command <<<
    poppunk \
      ~{sequences} \
      ~{if (create_db) then "--create-db" else ""} \
      ~{if (use_model) then "--use-model" else ""} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(r_files) then ("--r-files " +  '"' + r_files + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(external_clustering) then ("--external-clustering " +  '"' + external_clustering + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(plot_fit) then ("--plot-fit " +  '"' + plot_fit + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (graph_weights) then "--graph-weights" else ""} \
      ~{if defined(min_k) then ("--min-k " +  '"' + min_k + '"') else ""} \
      ~{if defined(max_k) then ("--max-k " +  '"' + max_k + '"') else ""} \
      ~{if defined(k_step) then ("--k-step " +  '"' + k_step + '"') else ""} \
      ~{if defined(sketch_size) then ("--sketch-size " +  '"' + sketch_size + '"') else ""} \
      ~{if (codon_phased) then "--codon-phased" else ""} \
      ~{if defined(min_km_er_count) then ("--min-kmer-count " +  '"' + min_km_er_count + '"') else ""} \
      ~{if (exact_count) then "--exact-count" else ""} \
      ~{if (strand_preserved) then "--strand-preserved" else ""} \
      ~{if defined(qc_filter) then ("--qc-filter " +  '"' + qc_filter + '"') else ""} \
      ~{if (retain_failures) then "--retain-failures" else ""} \
      ~{if defined(max_a_dist) then ("--max-a-dist " +  '"' + max_a_dist + '"') else ""} \
      ~{if defined(length_sigma) then ("--length-sigma " +  '"' + length_sigma + '"') else ""} \
      ~{if defined(length_range) then ("--length-range " +  '"' + length_range + '"') else ""} \
      ~{if defined(prop_n) then ("--prop-n " +  '"' + prop_n + '"') else ""} \
      ~{if defined(upper_n) then ("--upper-n " +  '"' + upper_n + '"') else ""} \
      ~{if defined(maximum_number_mixture) then ("--K " +  '"' + maximum_number_mixture + '"') else ""} \
      ~{if defined(maximum_number_default) then ("--D " +  '"' + maximum_number_default + '"') else ""} \
      ~{if defined(min_cluster_prop) then ("--min-cluster-prop " +  '"' + min_cluster_prop + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(pos_shift) then ("--pos-shift " +  '"' + pos_shift + '"') else ""} \
      ~{if defined(neg_shift) then ("--neg-shift " +  '"' + neg_shift + '"') else ""} \
      ~{if defined(manual_start) then ("--manual-start " +  '"' + manual_start + '"') else ""} \
      ~{if defined(indiv_refine) then ("--indiv-refine " +  '"' + indiv_refine + '"') else ""} \
      ~{if (no_local) then "--no-local" else ""} \
      ~{if defined(model_dir) then ("--model-dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(core_only) then ("--core-only " +  '"' + core_only + '"') else ""} \
      ~{if defined(ranks) then ("--ranks " +  '"' + ranks + '"') else ""} \
      ~{if (use_accessory) then "--use-accessory" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (gpu_sketch) then "--gpu-sketch" else ""} \
      ~{if (gpu_dist) then "--gpu-dist" else ""} \
      ~{if defined(deviceid) then ("--deviceid " +  '"' + deviceid + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.3.0--py_0"
  }
  parameter_meta {
    create_db: "Create pairwise distances database between reference"
    use_model: "Apply a fitted model to a reference database to\\nrestore database files"
    ref_db: "Location of built reference database"
    r_files: "File listing reference input assemblies"
    distances: "Prefix of input pickle of pre-calculated distances"
    external_clustering: "File with cluster definitions or other labels\\ngenerated with any other method."
    prefix_output_files: "Prefix for output files"
    plot_fit: "Create this many plots of some fits relating k-mer to\\ncore/accessory distances [default = 0]"
    overwrite: "Overwrite any existing database files"
    graph_weights: "Save within-strain Euclidean distances into the graph"
    min_k: "Minimum kmer length [default = 13]"
    max_k: "Maximum kmer length [default = 29]"
    k_step: "K-mer step size [default = 4]"
    sketch_size: "Kmer sketch size [default = 10000]"
    codon_phased: "Used codon phased seeds X--X--X [default = False]"
    min_km_er_count: "Minimum k-mer count when using reads as input [default\\n= 0]"
    exact_count: "Use the exact k-mer counter with reads [default = use\\ncountmin counter]"
    strand_preserved: "Treat input as being on the same strand, and ignore\\nreverse complement k-mers [default = use canonical\\nk-mers]"
    qc_filter: "Behaviour following sequence QC step: \\\"stop\\\"\\n[default], \\\"prune\\\" (analyse data passing QC), or\\n\\\"continue\\\" (analyse all data)"
    retain_failures: "Retain sketches of genomes that do not pass QC filters\\nin separate database [default = False]"
    max_a_dist: "Maximum accessory distance to permit [default = 0.5]"
    length_sigma: "Number of standard deviations of length distribution\\nbeyond which sequences will be excluded [default = 5]"
    length_range: "LENGTH_RANGE\\nAllowed length range, outside of which sequences will\\nbe excluded [two values needed - lower and upper\\nbounds]"
    prop_n: "Threshold ambiguous base proportion above which\\nsequences will be excluded [default = 0.1]"
    upper_n: "Threshold ambiguous base count above which sequences\\nwill be excluded"
    maximum_number_mixture: "Maximum number of mixture components [default = 2]"
    maximum_number_default: "Maximum number of clusters in DBSCAN fitting [default\\n= 100]"
    min_cluster_prop: "Minimum proportion of points in a cluster in DBSCAN\\nfitting [default = 0.0001]"
    threshold: "Cutoff if using --fit-model threshold"
    pos_shift: "Maximum amount to move the boundary away from origin\\n[default = to between-strain mean]"
    neg_shift: "Maximum amount to move the boundary towards the origin\\n[default = to within-strain mean]"
    manual_start: "A file containing information for a start point. See\\ndocumentation for help."
    indiv_refine: "Also run refinement for core and accessory\\nindividually"
    no_local: "Do not perform the local optimization step (speed up\\non very large datasets)"
    model_dir: "Directory containing model to use for assigning\\nqueries to clusters [default = reference database\\ndirectory]"
    core_only: "Save the core distance fit (with"
    ranks: "Comma separated list of ranks used in lineage\\nclustering [default = 1,2,3]"
    use_accessory: "Use accessory distances for lineage definitions\\n[default = use core distances]"
    threads: "Number of threads to use [default = 1]"
    gpu_sketch: "Use a GPU when calculating sketches (read data only)\\n[default = False]"
    gpu_dist: "Use a GPU when calculating distances [default = False]"
    deviceid: "CUDA device ID, if using GPU [default = 0]"
    sequences: "--fit-model {bgmm,dbscan,refine,lineage,threshold}"
  }
  output {
    File out_stdout = stdout()
  }
}
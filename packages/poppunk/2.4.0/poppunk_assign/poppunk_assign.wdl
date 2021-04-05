version 1.0

task PoppunkAssign {
  input {
    String? db
    File? query
    String? distances
    File? external_clustering
    String? prefix_output_required
    Int? plot_fit
    Boolean? write_references
    Boolean? update_db
    Boolean? overwrite
    Boolean? graph_weights
    Int? min_km_er_count
    Boolean? exact_count
    Boolean? strand_preserved
    String? qc_filter
    Boolean? retain_failures
    Int? max_a_dist
    Int? max_pi_dist
    String? type_isolate
    Int? length_sigma
    Int? length_range
    Float? prop_n
    String? upper_n
    Directory? model_dir
    Directory? previous_clustering
    Boolean? core_only
    Boolean? accessory_only
    Int? threads
    Boolean? gpu_sketch
    Boolean? gpu_dist
    Boolean? gpu_graph
    Int? deviceid
    Boolean? citation
  }
  command <<<
    poppunk_assign \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(external_clustering) then ("--external-clustering " +  '"' + external_clustering + '"') else ""} \
      ~{if defined(prefix_output_required) then ("--output " +  '"' + prefix_output_required + '"') else ""} \
      ~{if defined(plot_fit) then ("--plot-fit " +  '"' + plot_fit + '"') else ""} \
      ~{if (write_references) then "--write-references" else ""} \
      ~{if (update_db) then "--update-db" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (graph_weights) then "--graph-weights" else ""} \
      ~{if defined(min_km_er_count) then ("--min-kmer-count " +  '"' + min_km_er_count + '"') else ""} \
      ~{if (exact_count) then "--exact-count" else ""} \
      ~{if (strand_preserved) then "--strand-preserved" else ""} \
      ~{if defined(qc_filter) then ("--qc-filter " +  '"' + qc_filter + '"') else ""} \
      ~{if (retain_failures) then "--retain-failures" else ""} \
      ~{if defined(max_a_dist) then ("--max-a-dist " +  '"' + max_a_dist + '"') else ""} \
      ~{if defined(max_pi_dist) then ("--max-pi-dist " +  '"' + max_pi_dist + '"') else ""} \
      ~{if defined(type_isolate) then ("--type-isolate " +  '"' + type_isolate + '"') else ""} \
      ~{if defined(length_sigma) then ("--length-sigma " +  '"' + length_sigma + '"') else ""} \
      ~{if defined(length_range) then ("--length-range " +  '"' + length_range + '"') else ""} \
      ~{if defined(prop_n) then ("--prop-n " +  '"' + prop_n + '"') else ""} \
      ~{if defined(upper_n) then ("--upper-n " +  '"' + upper_n + '"') else ""} \
      ~{if defined(model_dir) then ("--model-dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(previous_clustering) then ("--previous-clustering " +  '"' + previous_clustering + '"') else ""} \
      ~{if (core_only) then "--core-only" else ""} \
      ~{if (accessory_only) then "--accessory-only" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (gpu_sketch) then "--gpu-sketch" else ""} \
      ~{if (gpu_dist) then "--gpu-dist" else ""} \
      ~{if (gpu_graph) then "--gpu-graph" else ""} \
      ~{if defined(deviceid) then ("--deviceid " +  '"' + deviceid + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0"
  }
  parameter_meta {
    db: "Location of built reference database"
    query: "File listing query input assemblies"
    distances: "Prefix of input pickle of pre-calculated distances (if\\nnot in --db)"
    external_clustering: "File with cluster definitions or other labels\\ngenerated with any other method."
    prefix_output_required: "Prefix for output files (required)"
    plot_fit: "Create this many plots of some fits relating k-mer to\\ncore/accessory distances [default = 0]"
    write_references: "Write reference database isolates' cluster assignments\\nout too"
    update_db: "Update reference database with query sequences"
    overwrite: "Overwrite any existing database files"
    graph_weights: "Save within-strain Euclidean distances into the graph"
    min_km_er_count: "Minimum k-mer count when using reads as input [default\\n= 0]"
    exact_count: "Use the exact k-mer counter with reads [default = use\\ncountmin counter]"
    strand_preserved: "Treat input as being on the same strand, and ignore\\nreverse complement k-mers [default = use canonical\\nk-mers]"
    qc_filter: "Behaviour following sequence QC step: \\\"stop\\\"\\n[default], \\\"prune\\\" (analyse data passing QC), or\\n\\\"continue\\\" (analyse all data)"
    retain_failures: "Retain sketches of genomes that do not pass QC filters\\nin separate database [default = False]"
    max_a_dist: "Maximum accessory distance to permit [default = 0.5]"
    max_pi_dist: "Maximum core distance to permit [default = 0.5]"
    type_isolate: "Isolate from which distances can be calculated for\\npruning [default = None]"
    length_sigma: "Number of standard deviations of length distribution\\nbeyond which sequences will be excluded [default = 5]"
    length_range: "LENGTH_RANGE\\nAllowed length range, outside of which sequences will\\nbe excluded [two values needed - lower and upper\\nbounds]"
    prop_n: "Threshold ambiguous base proportion above which\\nsequences will be excluded [default = 0.1]"
    upper_n: "Threshold ambiguous base count above which sequences\\nwill be excluded"
    model_dir: "Directory containing model to use for assigning\\nqueries to clusters [default = reference database\\ndirectory]"
    previous_clustering: "Directory containing previous cluster definitions and\\nnetwork [default = use that in the directory\\ncontaining the model]"
    core_only: "(with a 'refine' model) Use a core-distance only model\\nfor assigning queries [default = False]"
    accessory_only: "(with a 'refine' or 'lineage' model) Use an accessory-\\ndistance only model for assigning queries [default =\\nFalse]"
    threads: "Number of threads to use [default = 1]"
    gpu_sketch: "Use a GPU when calculating sketches (read data only)\\n[default = False]"
    gpu_dist: "Use a GPU when calculating distances [default = False]"
    gpu_graph: "Use a GPU when constructing networks [default = False]"
    deviceid: "CUDA device ID, if using GPU [default = 0]"
    citation: "Give a citation, and possible methods paragraph based\\non the command line\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
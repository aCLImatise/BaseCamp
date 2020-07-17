version 1.0

task ScanpyFindClusterLouvain {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    File? export_cluster
    String? use_graph
    Boolean? directed
    Boolean? use_weights
    Boolean? restrict_to
    Int? random_state
    Array[String] key_added
    Boolean? flavor
    Array[Float] resolution
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-find-cluster louvain \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{if defined(export_cluster) then ("--export-cluster " +  '"' + export_cluster + '"') else ""} \
      ~{if defined(use_graph) then ("--use-graph " +  '"' + use_graph + '"') else ""} \
      ~{true="--directed" false="" directed} \
      ~{true="--use-weights" false="" use_weights} \
      ~{true="--restrict-to" false="" restrict_to} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if defined(key_added) then ("--key-added " +  '"' + key_added + '"') else ""} \
      ~{true="--flavor" false="" flavor} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    export_cluster: "Export embeddings in a tab-separated text table."
    use_graph: "Slot name under `.uns` that contains the KNN graph of which sparse adjacency matrix is used for clustering.  [default: neighbors]"
    directed: "/ --undirected       Interpret the adjacency matrix as directed graph.  [default: True]"
    use_weights: "Use weights from KNN graph.  [default: False]"
    restrict_to: "<TEXT TEXT[,TEXT...]>... Restrict the clustering to the categories within the key for sample annotation, in the form of \"obs_key list_of_categories\". [default: None, None]"
    random_state: "Seed for random number generator.  [default: 0]"
    key_added: "Key under which to add the computed results"
    flavor: "[vtraag|igraph]        Choose between two packages for computing the clustering. \"vtraag\" is much powerful, and the default.  [default: vtraag]"
    resolution: "For the default flavor \"vtraag\", you can provide a resolution. Higher resolution means finding more and smaller clusters. [default: 1]"
    input_obj: ""
    output_obj: ""
  }
}
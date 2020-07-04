version 1.0

task ScanpyRunUmap {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    String? use_graph
    Int? random_state
    Array[String] key_added
    File? export_embedding
    String? in_it_pos
    Float? min_dist
    Float? spread
    Int? n_components
    Int? maxiter
    Float? alpha
    Float? gamma
    Int? negative_sample_rate
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-run-umap \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{if defined(use_graph) then ("--use-graph " +  '"' + use_graph + '"') else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if defined(key_added) then ("--key-added " +  '"' + key_added + '"') else ""} \
      ~{if defined(export_embedding) then ("--export-embedding " +  '"' + export_embedding + '"') else ""} \
      ~{if defined(in_it_pos) then ("--init-pos " +  '"' + in_it_pos + '"') else ""} \
      ~{if defined(min_dist) then ("--min-dist " +  '"' + min_dist + '"') else ""} \
      ~{if defined(spread) then ("--spread " +  '"' + spread + '"') else ""} \
      ~{if defined(n_components) then ("--n-components " +  '"' + n_components + '"') else ""} \
      ~{if defined(maxiter) then ("--maxiter " +  '"' + maxiter + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if defined(negative_sample_rate) then ("--negative-sample-rate " +  '"' + negative_sample_rate + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    use_graph: "Slot name under `.uns` that contains the KNN graph of which sparse adjacency matrix is used for clustering.  [default: neighbors]"
    random_state: "Seed for random number generator.  [default: 0]"
    key_added: "Key under which to add the computed results"
    export_embedding: "Export embeddings in a tab-separated text table."
    in_it_pos: "How to initialize the low dimensional embedding. Can be \"spectral\", \"paga\" or \"random\", or any key of `.obsm`.  [default: spectral]"
    min_dist: "The effective minimum distance between embedded points. Smaller values will result in a more clustered embedding, while larger values will results in a more even dispersal of points.  [default: 0.5]"
    spread: "The effective scale of embedded points, which determines the scale at which embedded points will be spread out.  [default: 1.0]"
    n_components: "The number of dimensions of the embedding. [default: 2]"
    maxiter: "The number of iterations of the optimization."
    alpha: "The initial learning rate for the embedding optimization.  [default: 1.0]"
    gamma: "Weighting applied to negative samples in low dimensional embedding optimization. [default: 1.0]"
    negative_sample_rate: "The number of negative edge samples to use per positive edge sample in optimizing the low dimensional embedding.  [default: 5]"
    input_obj: ""
    output_obj: ""
  }
}
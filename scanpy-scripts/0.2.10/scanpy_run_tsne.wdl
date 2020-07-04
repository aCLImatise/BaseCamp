version 1.0

task ScanpyRunTsne {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Int? n_pcs
    String? use_rep
    Int? random_state
    Array[String] key_added
    Int? n_jobs
    File? export_embedding
    Float? perplexity
    Float? early_exaggeration
    Float? learning_rate
    Boolean? no_fast_tsn_e
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-run-tsne \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{if defined(n_pcs) then ("--n-pcs " +  '"' + n_pcs + '"') else ""} \
      ~{if defined(use_rep) then ("--use-rep " +  '"' + use_rep + '"') else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if defined(key_added) then ("--key-added " +  '"' + key_added + '"') else ""} \
      ~{if defined(n_jobs) then ("--n-jobs " +  '"' + n_jobs + '"') else ""} \
      ~{if defined(export_embedding) then ("--export-embedding " +  '"' + export_embedding + '"') else ""} \
      ~{if defined(perplexity) then ("--perplexity " +  '"' + perplexity + '"') else ""} \
      ~{if defined(early_exaggeration) then ("--early-exaggeration " +  '"' + early_exaggeration + '"') else ""} \
      ~{if defined(learning_rate) then ("--learning-rate " +  '"' + learning_rate + '"') else ""} \
      ~{true="--no-fast-tsne" false="" no_fast_tsn_e}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    n_pcs: "Use this many PCs. Use `.X` if --n-pcs is 0 when --use-rep is None."
    use_rep: "Use the indicated representation. If None, the representation is chosen automatically: for `.n_vars` < 50, `.X` is used, otherwise `X_pca` is used. If `X_pca` is not present, it's computed with default parameters."
    random_state: "Seed for random number generator.  [default: 0]"
    key_added: "Key under which to add the computed results"
    n_jobs: "Number of jobs for parallel computation."
    export_embedding: "Export embeddings in a tab-separated text table."
    perplexity: "The perplexity is related to the number of nearest neighbors that is used in other manifold learning algorithms. Larger datasets usually require a larger perplexity. Consider selecting a value between 5 and 50. The choice is not extremely critical since t-SNE is quite insensitive to this parameter.  [default: 30]"
    early_exaggeration: "Controls how tight natural clusters in the original space are in the embedded space and how much space will be between them. For larger values, the space between natural clusters will be larger in the embedded space. Again, the choice of this parameter is not very critical. If the cost function increases during initial optimization, the early exaggeration factor or the learning rate might be too high.  [default: 12]"
    learning_rate: "Note that the R-package \"Rtsne\" uses a default of 200. The learning rate can be a critical parameter. It should be between 100 and 1000. If the cost function increases during initial optimization, the early exaggeration factor or the learning rate might be too high. If the cost function gets stuck in a bad local minimum increasing the learning rate helps sometimes.  [default: 1000]"
    no_fast_tsn_e: "When NOT set, use the MulticoreTSNE package by D. Ulyanov if installed.  [default: True]"
    input_obj: ""
    output_obj: ""
  }
}
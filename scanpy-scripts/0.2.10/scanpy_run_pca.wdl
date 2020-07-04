version 1.0

task ScanpyRunPca {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Boolean? no_zero_center
    Int? random_state
    File? export_embedding
    Int? n_comps
    Boolean? svd_solver
    Boolean? use_all
    Boolean? chunked
    Int? chunk_size
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-run-pca \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{true="--no-zero-center" false="" no_zero_center} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if defined(export_embedding) then ("--export-embedding " +  '"' + export_embedding + '"') else ""} \
      ~{if defined(n_comps) then ("--n-comps " +  '"' + n_comps + '"') else ""} \
      ~{true="--svd-solver" false="" svd_solver} \
      ~{true="--use-all" false="" use_all} \
      ~{true="--chunked" false="" chunked} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    no_zero_center: "When set, omit zero-centering variables to allow efficient handling of sparse input."
    random_state: "Seed for random number generator.  [default: 0]"
    export_embedding: "Export embeddings in a tab-separated text table."
    n_comps: "Number of components to compute  [default: 50]"
    svd_solver: "[auto|arpack|randomized] SVD solver to use.  [default: auto]"
    use_all: "When set, use all genes for PCA, otherwise use highly-variable genes by default."
    chunked: "When set, perform an incremental PCA on segments of --chunk-size, which automatically zero centers and ignore settings of --random-state and --svd-solver."
    chunk_size: "Number of observations to include in each chunk, required by --chunked."
    input_obj: ""
    output_obj: ""
  }
}
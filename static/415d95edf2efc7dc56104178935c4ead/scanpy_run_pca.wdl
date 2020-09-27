version 1.0

task Scanpyrunpca {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Boolean? no_zero_center
    Int? random_state
    File? export_embedding
    Boolean? svd_solver
    Boolean? use_all
    Boolean? chunked
    Int? chunk_size
    String table_dot
  }
  command <<<
    scanpy_run_pca \
      ~{table_dot} \
      ~{if (input_format) then "--input-format" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{if (show_obj) then "--show-obj" else ""} \
      ~{if (no_zero_center) then "--no-zero-center" else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if defined(export_embedding) then ("--export-embedding " +  '"' + export_embedding + '"') else ""} \
      ~{if (svd_solver) then "--svd-solver" else ""} \
      ~{if (use_all) then "--use-all" else ""} \
      ~{if (chunked) then "--chunked" else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom]\\nInput object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr]\\nOutput object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr"
    export_mtx: "When specified, using it as prefix for\\nexporting mtx files. If not empty and not\\nending with \\\"/\\\" or \\\"_\\\", a \\\"_\\\" will be\\nappended."
    show_obj: "[stdout|stderr]      Print output object summary info to\\nspecified stream."
    no_zero_center: "When set, omit zero-centering variables to\\nallow efficient handling of sparse input."
    random_state: "Seed for random number generator.  [default:\\n0]"
    export_embedding: "Export embeddings in a tab-separated text"
    svd_solver: "[auto|arpack|randomized]\\nSVD solver to use.  [default: auto]"
    use_all: "When set, use all genes for PCA, otherwise\\nuse highly-variable genes by default."
    chunked: "When set, perform an incremental PCA on\\nsegments of --chunk-size, which\\nautomatically zero centers and ignore\\nsettings of --random-state and --svd-solver."
    chunk_size: "Number of observations to include in each\\nchunk, required by --chunked."
    table_dot: "--n-comps INTEGER               Number of components to compute  [default:"
  }
  output {
    File out_stdout = stdout()
  }
}
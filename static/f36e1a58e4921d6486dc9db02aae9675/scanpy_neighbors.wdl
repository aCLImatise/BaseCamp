version 1.0

task ScanpyNeighbors {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Int? n_pcs
    String? use_rep
    Array[String] key_added
    Int? random_state
    Array[Int] n_neighbors
    Boolean? no_knn
    Boolean? method
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-neighbors \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{if defined(n_pcs) then ("--n-pcs " +  '"' + n_pcs + '"') else ""} \
      ~{if defined(use_rep) then ("--use-rep " +  '"' + use_rep + '"') else ""} \
      ~{if defined(key_added) then ("--key-added " +  '"' + key_added + '"') else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if defined(n_neighbors) then ("--n-neighbors " +  '"' + n_neighbors + '"') else ""} \
      ~{true="--no-knn" false="" no_knn} \
      ~{true="--method" false="" method}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    n_pcs: "Use this many PCs. Use `.X` if --n-pcs is 0 when --use-rep is None."
    use_rep: "Use the indicated representation. If None, the representation is chosen automatically: for `.n_vars` < 50, `.X` is used, otherwise `X_pca` is used. If `X_pca` is not present, it's computed with default parameters."
    key_added: "Key under which to add the computed results"
    random_state: "Seed for random number generator.  [default: 0]"
    n_neighbors: "The size of local neighborhood (in terms of number of neighboring data points) used for manifold approximation. Larger values result in more global views of the manifold, while smaller values result in more local data being preserved. In general values should be in the range 2 to 100.  If --knn is set, number of nearest neighbors to be searched, othwise a Gaussian kernel width is set to the distance of the --n-neighbors neighbor. [default: 15]"
    no_knn: "When NOT set, use a hard threshold to restrict the number of neighbors to --n-neighbors. Otherwise, use a Gaussian kernel to assign low weights to neighbors more distant than the --n-neighbors nearest neighbor  [default: True]"
    method: "[umap|gauss]       Use umap or gauss with adaptive width for computing connectivities.  [default: umap]"
    input_obj: ""
    output_obj: ""
  }
}
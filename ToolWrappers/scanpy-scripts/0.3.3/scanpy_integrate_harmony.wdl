version 1.0

task ScanpyintegrateHarmony {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    Boolean? loom_write_obs_m_var_m
    File? export_mtx
    Boolean? show_obj
    String? batch_key
    String? basis
    String? adjusted_basis
    Float? theta
    Float? lambda
    Float? sigma
    Int? n_clust
    Int? tau
    Float? block_size
    Int? max_iter_cluster
    Int? max_iter_harmony
    Float? epsilon_cluster
    Float? epsilon_harmony
    Int? random_state
    String input_obj
    String output_obj
  }
  command <<<
    scanpy_integrate harmony \
      ~{input_obj} \
      ~{output_obj} \
      ~{if (input_format) then "--input-format" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if (loom_write_obs_m_var_m) then "--loom-write-obsm-varm" else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{if (show_obj) then "--show-obj" else ""} \
      ~{if defined(batch_key) then ("--batch-key " +  '"' + batch_key + '"') else ""} \
      ~{if defined(basis) then ("--basis " +  '"' + basis + '"') else ""} \
      ~{if defined(adjusted_basis) then ("--adjusted-basis " +  '"' + adjusted_basis + '"') else ""} \
      ~{if defined(theta) then ("--theta " +  '"' + theta + '"') else ""} \
      ~{if defined(lambda) then ("--lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(sigma) then ("--sigma " +  '"' + sigma + '"') else ""} \
      ~{if defined(n_clust) then ("--n-clust " +  '"' + n_clust + '"') else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(max_iter_cluster) then ("--max-iter-cluster " +  '"' + max_iter_cluster + '"') else ""} \
      ~{if defined(max_iter_harmony) then ("--max-iter-harmony " +  '"' + max_iter_harmony + '"') else ""} \
      ~{if defined(epsilon_cluster) then ("--epsilon-cluster " +  '"' + epsilon_cluster + '"') else ""} \
      ~{if defined(epsilon_harmony) then ("--epsilon-harmony " +  '"' + epsilon_harmony + '"') else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scanpy-scripts:0.3.3--pyhdfd78af_2"
  }
  parameter_meta {
    input_format: "[anndata|loom]\\nInput object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr]\\nOutput object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr"
    loom_write_obs_m_var_m: "Write obsm and varm to the Loom file?\\n[default: False]"
    export_mtx: "When specified, using it as prefix for\\nexporting mtx files. If not empty and not\\nending with \\\"/\\\" or \\\"_\\\", a \\\"_\\\" will be\\nappended."
    show_obj: "[stdout|stderr]      Print output object summary info to\\nspecified stream."
    batch_key: "The name of the column in adata.obs that\\ndifferentiates among experiments/batches.\\n[required]"
    basis: "The name of the field in adata.obsm where\\nthe PCA table is stored. Defaults to\\n'X_pca', which is the default for\\nsc.tl.pca().  [default: X_pca]"
    adjusted_basis: "The name of the field in adata.obsm where\\nthe adjusted PCA table will be stored after\\nrunning this function.  [default:\\nX_pca_harmony]"
    theta: "Diversity clustering penalty parameter.\\ntheta=0 does not encourage any diversity.\\nLarger values of theta result in more\\ndiverse clusters.  [default: 2]"
    lambda: "Ridge regression penalty parameter. Lambda\\nmust be strictly positive.  Smaller values\\nresult in more aggressive correction.\\n[default: 1]"
    sigma: "Width of soft kmeans clusters. Sigma scales\\nthe distance from a cell to cluster\\ncentroids. Larger values of sigma result in\\ncells assigned to more clusters. Smaller\\nvalues of sigma make soft kmeans cluster\\napproach hard clustering.  [default: 0.1]"
    n_clust: "Number of clusters in model. nclust=1\\nequivalent to simple linear regression."
    tau: "Protection against overclustering small\\ndatasets with large ones. tau is the\\nexpected number of cells per cluster.\\n[default: 0]"
    block_size: "What proportion of cells to update during\\nclustering. Between 0 to 1, default 0.05.\\nLarger values may be faster but less\\naccurate.  [default: 0.05]"
    max_iter_cluster: "Maximum number of rounds to run clustering\\nat each round of Harmony.  [default: 20]"
    max_iter_harmony: "Maximum number of rounds to run Harmony. One\\nround of Harmony involves one clustering and\\none correction step.  [default: 10]"
    epsilon_cluster: "Convergence tolerance for clustering round\\nof Harmony Set to -Inf to never stop early.\\n[default: 1e-05]"
    epsilon_harmony: "Convergence tolerance for clustering round\\nof Harmony Set to -Inf to never stop early.\\n[default: 1e-05]"
    random_state: "Seed for random number generator.  [default:\\n0]"
    input_obj: ""
    output_obj: ""
  }
  output {
    File out_stdout = stdout()
  }
}
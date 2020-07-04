version 1.0

task ScanpyFindVariableGenes {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Float? mean_limits
    Float? disp_limits
    Int? n_bins
    Int? n_top_genes
    Boolean? flavor
    Boolean? subset
    String? by_batch
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-find-variable-genes \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{if defined(mean_limits) then ("--mean-limits " +  '"' + mean_limits + '"') else ""} \
      ~{if defined(disp_limits) then ("--disp-limits " +  '"' + disp_limits + '"') else ""} \
      ~{if defined(n_bins) then ("--n-bins " +  '"' + n_bins + '"') else ""} \
      ~{if defined(n_top_genes) then ("--n-top-genes " +  '"' + n_top_genes + '"') else ""} \
      ~{true="--flavor" false="" flavor} \
      ~{true="--subset" false="" subset} \
      ~{if defined(by_batch) then ("--by-batch " +  '"' + by_batch + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    mean_limits: "... Cutoffs for the mean of expressionin the format of \"-m min max\".  [default: 0.0125, 3]"
    disp_limits: "... Cutoffs for the dispersion of expressionin the format of \"-d min max\".  [default: 0.5, inf]"
    n_bins: "Number of bins for binning the mean gene expression.  [default: 20]"
    n_top_genes: "Number of highly-variable genes to keep."
    flavor: "[seurat|cellranger] Choose the flavor for computing normalized dispersion.  [default: seurat]"
    subset: "When set, inplace subset to highly-variable genes, otherwise only flag highly-variable genes."
    by_batch: "... Find highly variable genes within each batch defined by <TEXT> then pool and keep those found in at least <INTEGER> batches. [default: None, None]"
    input_obj: ""
    output_obj: ""
  }
}
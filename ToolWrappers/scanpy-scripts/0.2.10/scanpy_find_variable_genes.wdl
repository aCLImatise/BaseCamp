version 1.0

task Scanpyfindvariablegenes {
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
    Int? by_batch
    String input_obj
    String output_obj
  }
  command <<<
    scanpy_find_variable_genes \
      ~{input_obj} \
      ~{output_obj} \
      ~{if (input_format) then "--input-format" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{if (show_obj) then "--show-obj" else ""} \
      ~{if defined(mean_limits) then ("--mean-limits " +  '"' + mean_limits + '"') else ""} \
      ~{if defined(disp_limits) then ("--disp-limits " +  '"' + disp_limits + '"') else ""} \
      ~{if defined(n_bins) then ("--n-bins " +  '"' + n_bins + '"') else ""} \
      ~{if defined(n_top_genes) then ("--n-top-genes " +  '"' + n_top_genes + '"') else ""} \
      ~{if (flavor) then "--flavor" else ""} \
      ~{if (subset) then "--subset" else ""} \
      ~{if defined(by_batch) then ("--by-batch " +  '"' + by_batch + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom]\\nInput object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr]\\nOutput object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr"
    export_mtx: "When specified, using it as prefix for\\nexporting mtx files. If not empty and not\\nending with \\\"/\\\" or \\\"_\\\", a \\\"_\\\" will be\\nappended."
    show_obj: "[stdout|stderr]      Print output object summary info to\\nspecified stream."
    mean_limits: "...\\nCutoffs for the mean of expressionin the\\nformat of \\\"-m min max\\\".  [default: 0.0125,\\n3]"
    disp_limits: "...\\nCutoffs for the dispersion of expressionin\\nthe format of \\\"-d min max\\\".  [default: 0.5,\\ninf]"
    n_bins: "Number of bins for binning the mean gene"
    n_top_genes: "Number of highly-variable genes to keep."
    flavor: "[seurat|cellranger]\\nChoose the flavor for computing normalized\\ndispersion.  [default: seurat]"
    subset: "When set, inplace subset to highly-variable\\ngenes, otherwise only flag highly-variable\\ngenes."
    by_batch: "...\\nFind highly variable genes within each batch\\ndefined by <TEXT> then pool and keep those\\nfound in at least <INTEGER> batches.\\n[default: None, None]"
    input_obj: ""
    output_obj: ""
  }
  output {
    File out_stdout = stdout()
  }
}
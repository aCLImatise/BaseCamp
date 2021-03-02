version 1.0

task Scanpyfiltercells {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    Boolean? loom_write_obs_m_var_m
    File? export_mtx
    Boolean? show_obj
    String? gene_name
    Boolean? list_attr
    Float? param
    Boolean? category
    File? subset
    Boolean? force_recalc
    String input_obj
    String output_obj
  }
  command <<<
    scanpy_filter_cells \
      ~{input_obj} \
      ~{output_obj} \
      ~{if (input_format) then "--input-format" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if (loom_write_obs_m_var_m) then "--loom-write-obsm-varm" else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{if (show_obj) then "--show-obj" else ""} \
      ~{if defined(gene_name) then ("--gene-name " +  '"' + gene_name + '"') else ""} \
      ~{if (list_attr) then "--list-attr" else ""} \
      ~{if defined(param) then ("--param " +  '"' + param + '"') else ""} \
      ~{if (category) then "--category" else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if (force_recalc) then "--force-recalc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scanpy-scripts:0.3.2--py_0"
  }
  parameter_meta {
    input_format: "[anndata|loom]\\nInput object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr]\\nOutput object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr"
    loom_write_obs_m_var_m: "Write obsm and varm to the Loom file?\\n[default: False]"
    export_mtx: "When specified, using it as prefix for\\nexporting mtx files. If not empty and not\\nending with \\\"/\\\" or \\\"_\\\", a \\\"_\\\" will be\\nappended."
    show_obj: "[stdout|stderr]      Print output object summary info to\\nspecified stream."
    gene_name: "Name of the variable that contains gene\\nnames, used for flagging mitochondria genes\\nwhen column \\\"mito\\\" is absent from `.var`.\\n[default: index]"
    list_attr: "When set, list attributes that can be\\nfiltered on."
    param: "...\\nNumerical parameters used to filter the\\ndata, in the format of \\\"-p name min max\\\".\\nMultiple -p entries allowed."
    category: "<TEXT TEXT[,TEXT...]>...\\nCategorical attributes used to filter the\\ndata, in the format of \\\"-c <name> <values>\\\",\\nwhere entries with attribute <name> with\\nvalue in <values> are kept. If <values> is\\npreceded by \\\"!\\\", entries with value in\\n<values> are removed. Multiple -c entries\\nallowed."
    subset: "...\\nSimilar to --category in the format of \\\"-s\\n<name> <file>\\\", but the <file> to be a one-\\ncolumn table that provides the values.\\nMultiple -s entries allowed."
    force_recalc: "When set, re-calculate\\n`pct_counts_<qc_variable>` and\\n`pct_counts_in_top_<n>_genes` even if they\\nexist."
    input_obj: ""
    output_obj: ""
  }
  output {
    File out_stdout = stdout()
  }
}
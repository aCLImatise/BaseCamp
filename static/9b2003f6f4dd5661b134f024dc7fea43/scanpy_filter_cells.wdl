version 1.0

task ScanpyFilterCells {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    String? gene_name
    Boolean? list_attr
    String? param
    Boolean? category
    String? subset
    Boolean? force_recalc
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-filter-cells \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{if defined(gene_name) then ("--gene-name " +  '"' + gene_name + '"') else ""} \
      ~{true="--list-attr" false="" list_attr} \
      ~{if defined(param) then ("--param " +  '"' + param + '"') else ""} \
      ~{true="--category" false="" category} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{true="--force-recalc" false="" force_recalc}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    gene_name: "Name of the variable that contains gene names, used for flagging mitochondria genes when column \"mito\" is absent from `.var`. [default: index]"
    list_attr: "When set, list attributes that can be filtered on."
    param: "... Numerical parameters used to filter the data, in the format of \"-p name min max\". Multiple -p entries allowed."
    category: "<TEXT TEXT[,TEXT...]>... Categorical attributes used to filter the data, in the format of \"-c <name> <values>\", where entries with attribute <name> with value in <values> are kept. If <values> is preceded by \"!\", entries with value in <values> are removed. Multiple -c entries allowed."
    subset: "... Similar to --category in the format of \"-s <name> <file>\", but the <file> to be a one- column table that provides the values. Multiple -s entries allowed."
    force_recalc: "When set, re-calculate `pct_counts_<qc_variable>` and `pct_counts_in_top_<n>_genes` even if they exist."
    input_obj: ""
    output_obj: ""
  }
}
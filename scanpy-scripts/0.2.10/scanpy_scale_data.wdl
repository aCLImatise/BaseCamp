version 1.0

task ScanpyScaleData {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Boolean? no_zero_center
    Float? max_value
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-scale-data \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{true="--no-zero-center" false="" no_zero_center} \
      ~{if defined(max_value) then ("--max-value " +  '"' + max_value + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    no_zero_center: "When set, omit zero-centering variables to allow efficient handling of sparse input."
    max_value: "When specified, clip to this value after scaling, otherwise do not clip"
    input_obj: ""
    output_obj: ""
  }
}
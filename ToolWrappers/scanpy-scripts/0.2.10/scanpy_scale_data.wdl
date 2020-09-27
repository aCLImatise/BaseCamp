version 1.0

task Scanpyscaledata {
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
    scanpy_scale_data \
      ~{input_obj} \
      ~{output_obj} \
      ~{if (input_format) then "--input-format" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{if (show_obj) then "--show-obj" else ""} \
      ~{if (no_zero_center) then "--no-zero-center" else ""} \
      ~{if defined(max_value) then ("--max-value " +  '"' + max_value + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom]\\nInput object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr]\\nOutput object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr"
    export_mtx: "When specified, using it as prefix for\\nexporting mtx files. If not empty and not\\nending with \\\"/\\\" or \\\"_\\\", a \\\"_\\\" will be\\nappended."
    show_obj: "[stdout|stderr]      Print output object summary info to\\nspecified stream."
    no_zero_center: "When set, omit zero-centering variables to\\nallow efficient handling of sparse input."
    max_value: "When specified, clip to this value after\\nscaling, otherwise do not clip"
    input_obj: ""
    output_obj: ""
  }
  output {
    File out_stdout = stdout()
  }
}
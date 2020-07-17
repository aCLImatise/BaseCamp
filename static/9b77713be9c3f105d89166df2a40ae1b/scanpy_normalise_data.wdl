version 1.0

task ScanpyNormaliseData {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Boolean? save_raw
    Boolean? no_log_transform
    Float? normalize_to
    Float? fraction
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-normalise-data \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{true="--save-raw" false="" save_raw} \
      ~{true="--no-log-transform" false="" no_log_transform} \
      ~{if defined(normalize_to) then ("--normalize-to " +  '"' + normalize_to + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    save_raw: "[yes|no|counts]  Save raw data existing raw data.  [default: yes]"
    no_log_transform: "When set, do not apply (natural) log transform following normalisation. [default: True]"
    normalize_to: "Normalize per cell nUMI to this number. [default: 10000]"
    fraction: "Only use genes that make up less than this fraction of the total count in every cell. So only these genes will sum up to the number specified by --normalize-to. [default: 0.9]"
    input_obj: ""
    output_obj: ""
  }
}
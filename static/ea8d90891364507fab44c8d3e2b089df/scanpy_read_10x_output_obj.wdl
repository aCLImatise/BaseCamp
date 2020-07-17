version 1.0

task ScanpyRead10xOutputObj {
  input {
    File? input_one_zero_x_h_five
    Directory? input_one_zero_x_mtx
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    String? genome
    Boolean? var_names
    File? extra_obs
    File? extra_var
  }
  command <<<
    scanpy-read-10x output_obj \
      ~{if defined(input_one_zero_x_h_five) then ("--input-10x-h5 " +  '"' + input_one_zero_x_h_five + '"') else ""} \
      ~{if defined(input_one_zero_x_mtx) then ("--input-10x-mtx " +  '"' + input_one_zero_x_mtx + '"') else ""} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="--var-names" false="" var_names} \
      ~{if defined(extra_obs) then ("--extra-obs " +  '"' + extra_obs + '"') else ""} \
      ~{if defined(extra_var) then ("--extra-var " +  '"' + extra_var + '"') else ""}
  >>>
  parameter_meta {
    input_one_zero_x_h_five: "Input 10x data in Cell-Ranger hdf5 format."
    input_one_zero_x_mtx: "Path of input folder containing 10x data in mtx format."
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    genome: "Name of the genome group in hdf5 file, required by \"--input-10x-h5\".  [default: hg19]"
    var_names: "[gene_symbols|gene_ids] Attribute to be used as the index of the variable table, required by \"-- input-10x-mtx\".  [default: gene_symbols]"
    extra_obs: "Extra cell metadata table, must be tab- separated with a header row and an index column, and with matched dimension."
    extra_var: "Extra gene metadata table, must be tab- separated with a header row and an index column, and with matched dimension."
  }
}
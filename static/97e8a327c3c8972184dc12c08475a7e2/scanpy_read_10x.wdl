version 1.0

task Scanpyread10x {
  input {
    File? input_one_zero_x_h_five
    Directory? input_one_zero_x_mtx
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    File? genome
    Boolean? var_names
    File? extra_obs
    File? extra_var
    String output_obj
  }
  command <<<
    scanpy_read_10x \
      ~{output_obj} \
      ~{if defined(input_one_zero_x_h_five) then ("--input-10x-h5 " +  '"' + input_one_zero_x_h_five + '"') else ""} \
      ~{if defined(input_one_zero_x_mtx) then ("--input-10x-mtx " +  '"' + input_one_zero_x_mtx + '"') else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{if (show_obj) then "--show-obj" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (var_names) then "--var-names" else ""} \
      ~{if defined(extra_obs) then ("--extra-obs " +  '"' + extra_obs + '"') else ""} \
      ~{if defined(extra_var) then ("--extra-var " +  '"' + extra_var + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_one_zero_x_h_five: "Input 10x data in Cell-Ranger hdf5 format."
    input_one_zero_x_mtx: "Path of input folder containing 10x data in\\nmtx format."
    output_format: "[anndata|loom|zarr]\\nOutput object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr"
    export_mtx: "When specified, using it as prefix for\\nexporting mtx files. If not empty and not\\nending with \\\"/\\\" or \\\"_\\\", a \\\"_\\\" will be\\nappended."
    show_obj: "[stdout|stderr]      Print output object summary info to\\nspecified stream."
    genome: "Name of the genome group in hdf5 file,\\nrequired by \\\"--input-10x-h5\\\".  [default:\\nhg19]"
    var_names: "[gene_symbols|gene_ids]\\nAttribute to be used as the index of the\\nvariable table, required by \\\"--\\ninput-10x-mtx\\\".  [default: gene_symbols]"
    extra_obs: "Extra cell metadata table, must be tab-\\nseparated with a header row and an index\\ncolumn, and with matched dimension."
    extra_var: "Extra gene metadata table, must be tab-\\nseparated with a header row and an index\\ncolumn, and with matched dimension."
    output_obj: ""
  }
  output {
    File out_stdout = stdout()
  }
}
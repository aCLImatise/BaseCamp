version 1.0

task SeuratnormalisedataR {
  input {
    File? input_object_file
    String? input_format
    String? output_format
    String? normalization_method
    String? scale_factor
    File? output_object_file
    Int? margin
    Int? block_size
  }
  command <<<
    seurat_normalise_data_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(normalization_method) then ("--normalization-method " +  '"' + normalization_method + '"') else ""} \
      ~{if defined(scale_factor) then ("--scale-factor " +  '"' + scale_factor + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(margin) then ("--margin " +  '"' + margin + '"') else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    normalization_method: "Method for normalization. Default is log-normalization (LogNormalize). Can be 'CLR' or 'RC' additionally."
    scale_factor: "Sets the scale factor for cell-level normalization."
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
    margin: "If performing CLR normalization, normalize across features (1) or cells (2)."
    block_size: "How many cells should be run in each chunk, will try to split evenly across threads"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}
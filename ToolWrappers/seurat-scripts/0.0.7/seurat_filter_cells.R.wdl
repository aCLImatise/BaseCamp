version 1.0

task SeuratfiltercellsR {
  input {
    File? input_object_file
    String? input_format
    String? output_format
    Int? subset_names
    String? low_thresholds
    String? high_thresholds
    File? cells_use
    File? output_object_file
    String? idents
    File? features
  }
  command <<<
    seurat_filter_cells_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(subset_names) then ("--subset-names " +  '"' + subset_names + '"') else ""} \
      ~{if defined(low_thresholds) then ("--low-thresholds " +  '"' + low_thresholds + '"') else ""} \
      ~{if defined(high_thresholds) then ("--high-thresholds " +  '"' + high_thresholds + '"') else ""} \
      ~{if defined(cells_use) then ("--cells-use " +  '"' + cells_use + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(idents) then ("--idents " +  '"' + idents + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    subset_names: "Parameters to subset on. Eg, the name of a gene, PC1, a column name in object@meta.data, etc. Any argument that can be retreived using FetchData."
    low_thresholds: "Low cutoffs for the parameters (default is -Inf)."
    high_thresholds: "High cutoffs for the parameters (default is Inf)."
    cells_use: "Comma-separated list of cell names to use as a subset. Alternatively, text file with one cell per line."
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
    idents: "CLASSES TO KEEP\\nComma-separated list of identity classes to keep"
    features: "TO KEEP\\nComma-separated list or file path with features (normally genes) to keep"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}
version 1.0

task SeuratExportCellbrowser.R {
  input {
    String? input_object_file
    String? input_format
    String? output_directory
    String? study_name
    String? markers_file
  }
  command <<<
    seurat-export-cellbrowser.R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(study_name) then ("--study-name " +  '"' + study_name + '"') else ""} \
      ~{if defined(markers_file) then ("--markers-file " +  '"' + markers_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_directory: "File name in which to store serialized R object of type 'Seurat'.'"
    study_name: "Study name to be displayed in CellBrowser"
    markers_file: "Path to markers file computed by Seurat"
  }
}
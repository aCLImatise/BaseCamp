version 1.0

task SeuratexportcellbrowserR {
  input {
    File? input_object_file
    String? input_format
    Directory? output_directory
    String? study_name
    File? markers_file
  }
  command <<<
    seurat_export_cellbrowser_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(study_name) then ("--study-name " +  '"' + study_name + '"') else ""} \
      ~{if defined(markers_file) then ("--markers-file " +  '"' + markers_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seurat-scripts:0.0.9--0"
  }
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_directory: "File name in which to store serialized R object of type 'Seurat'.'"
    study_name: "Study name to be displayed in CellBrowser"
    markers_file: "Path to markers file computed by Seurat"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}
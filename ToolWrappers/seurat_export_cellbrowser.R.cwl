class: CommandLineTool
id: seurat_export_cellbrowser.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string
  inputBinding:
    prefix: --input-format
- id: in_output_directory
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_study_name
  doc: Study name to be displayed in CellBrowser
  type: string
  inputBinding:
    prefix: --study-name
- id: in_markers_file
  doc: Path to markers file computed by Seurat
  type: File
  inputBinding:
    prefix: --markers-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- seurat-export-cellbrowser.R

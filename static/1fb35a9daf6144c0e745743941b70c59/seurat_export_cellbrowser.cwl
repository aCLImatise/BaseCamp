class: CommandLineTool
id: seurat_export_cellbrowser.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string
  inputBinding:
    prefix: --input-format
- id: output_directory
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: string
  inputBinding:
    prefix: --output-directory
- id: study_name
  doc: Study name to be displayed in CellBrowser
  type: string
  inputBinding:
    prefix: --study-name
- id: markers_file
  doc: Path to markers file computed by Seurat
  type: string
  inputBinding:
    prefix: --markers-file
outputs: []
cwlVersion: v1.1
baseCommand:
- seurat-export-cellbrowser.R

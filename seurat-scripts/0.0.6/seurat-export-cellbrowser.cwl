#!/usr/bin/env cwl-runner

baseCommand:
- seurat-export-cellbrowser.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-export-cellbrowser.r
inputs:
- doc: File name in which a serialized R matrix object may be found.
  id: input_object_file
  inputBinding:
    prefix: --input-object-file
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: File name in which to store serialized R object of type 'Seurat'.'
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: string
- doc: Study name to be displayed in CellBrowser
  id: study_name
  inputBinding:
    prefix: --study-name
  type: string
- doc: Path to markers file computed by Seurat
  id: markers_file
  inputBinding:
    prefix: --markers-file
  type: string

#!/usr/bin/env cwl-runner

baseCommand:
- o-heatmap.R
class: CommandLineTool
cwlVersion: v1.0
id: o-heatmap.r
inputs:
- doc: ''
  id: heat_map_r
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_file
  inputBinding:
    position: 1
  type: string
- doc: Metadata file
  id: metadata
  inputBinding:
    prefix: --metadata
  type: string
- doc: Output file prefix for visualization files [default "unknown"]
  id: output_file_prefix
  inputBinding:
    prefix: --output_file_prefix
  type: string
- doc: Distance metric for columns [default "horn"]
  id: distance_col
  inputBinding:
    prefix: --distance_col
  type: string
- doc: Distance metric for rows [default "horn"]
  id: distance_row
  inputBinding:
    prefix: --distance_row
  type: string
- doc: Clistering method [default "ward"]
  id: clustering
  inputBinding:
    prefix: --clustering
  type: string
- doc: PDF output height [default "9"]
  id: pdf_height
  inputBinding:
    prefix: --pdf_height
  type: string
- doc: Dendrogram size for columns [default "100"]
  id: tree_height_col
  inputBinding:
    prefix: --treeheight_col
  type: string
- doc: Dendrogram size for rows (0 would make it disappear) [default "100"]
  id: tree_height_row
  inputBinding:
    prefix: --treeheight_row
  type: string
- doc: Show row names [default "FALSE"]
  id: show_row_names
  inputBinding:
    prefix: --show_rownames
  type: string
- doc: Scale based on columns [default "FALSE"]
  id: scale_the_other_way
  inputBinding:
    prefix: --scale_the_other_way
  type: string
- doc: Title for the output figure [default '(unknown title)']
  id: title
  inputBinding:
    prefix: --title
  type: string

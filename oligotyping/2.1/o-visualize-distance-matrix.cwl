#!/usr/bin/env cwl-runner

baseCommand:
- o-visualize-distance-matrix.R
class: CommandLineTool
cwlVersion: v1.0
id: o-visualize-distance-matrix.r
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
- doc: Color 3% OTU limits [default "FALSE"]
  id: otu_limits
  inputBinding:
    prefix: --otu_limits
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
- doc: PDF output height and width [default "20"]
  id: pdf_size
  inputBinding:
    prefix: --pdf_size
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
- doc: Title for the output figure [default '(unknown title)']
  id: title
  inputBinding:
    prefix: --title
  type: string

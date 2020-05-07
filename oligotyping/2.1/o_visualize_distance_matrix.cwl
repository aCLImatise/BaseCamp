class: CommandLineTool
id: o_visualize_distance_matrix.R.cwl
inputs:
- id: heat_map_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: metadata
  doc: Metadata file
  type: string
  inputBinding:
    prefix: --metadata
- id: otu_limits
  doc: Color 3% OTU limits [default "FALSE"]
  type: string
  inputBinding:
    prefix: --otu_limits
- id: output_file_prefix
  doc: Output file prefix for visualization files [default "unknown"]
  type: string
  inputBinding:
    prefix: --output_file_prefix
- id: distance_col
  doc: Distance metric for columns [default "horn"]
  type: string
  inputBinding:
    prefix: --distance_col
- id: distance_row
  doc: Distance metric for rows [default "horn"]
  type: string
  inputBinding:
    prefix: --distance_row
- id: clustering
  doc: Clistering method [default "ward"]
  type: string
  inputBinding:
    prefix: --clustering
- id: pdf_size
  doc: PDF output height and width [default "20"]
  type: string
  inputBinding:
    prefix: --pdf_size
- id: tree_height_col
  doc: Dendrogram size for columns [default "100"]
  type: string
  inputBinding:
    prefix: --treeheight_col
- id: tree_height_row
  doc: Dendrogram size for rows (0 would make it disappear) [default "100"]
  type: string
  inputBinding:
    prefix: --treeheight_row
- id: title
  doc: Title for the output figure [default '(unknown title)']
  type: string
  inputBinding:
    prefix: --title
outputs: []
cwlVersion: v1.1
baseCommand:
- o-visualize-distance-matrix.R

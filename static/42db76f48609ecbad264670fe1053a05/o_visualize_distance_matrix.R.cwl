class: CommandLineTool
id: o_visualize_distance_matrix.R.cwl
inputs:
- id: in_metadata
  doc: Metadata file
  type: File
  inputBinding:
    prefix: --metadata
- id: in_otu_limits
  doc: Color 3% OTU limits [default "FALSE"]
  type: long
  inputBinding:
    prefix: --otu_limits
- id: in_output_file_prefix
  doc: Output file prefix for visualization files [default "unknown"]
  type: File
  inputBinding:
    prefix: --output_file_prefix
- id: in_distance_col
  doc: Distance metric for columns [default "horn"]
  type: string
  inputBinding:
    prefix: --distance_col
- id: in_distance_row
  doc: Distance metric for rows [default "horn"]
  type: string
  inputBinding:
    prefix: --distance_row
- id: in_clustering
  doc: Clistering method [default "ward"]
  type: string
  inputBinding:
    prefix: --clustering
- id: in_pdf_size
  doc: PDF output height and width [default "20"]
  type: long
  inputBinding:
    prefix: --pdf_size
- id: in_tree_height_col
  doc: Dendrogram size for columns [default "100"]
  type: long
  inputBinding:
    prefix: --treeheight_col
- id: in_tree_height_row
  doc: Dendrogram size for rows (0 would make it disappear) [default "100"]
  type: long
  inputBinding:
    prefix: --treeheight_row
- id: in_title
  doc: Title for the output figure [default '(unknown title)']
  type: string
  inputBinding:
    prefix: --title
- id: in_heat_map_do_tr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: Output file prefix for visualization files [default "unknown"]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
cwlVersion: v1.1
baseCommand:
- o-visualize-distance-matrix.R

class: CommandLineTool
id: o_heatmap.R.cwl
inputs:
- id: in_metadata
  doc: Metadata file
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_output_file_prefix
  doc: Output file prefix for visualization files [default "unknown"]
  type: File?
  inputBinding:
    prefix: --output_file_prefix
- id: in_distance_col
  doc: Distance metric for columns [default "horn"]
  type: string?
  inputBinding:
    prefix: --distance_col
- id: in_distance_row
  doc: Distance metric for rows [default "horn"]
  type: string?
  inputBinding:
    prefix: --distance_row
- id: in_clustering
  doc: Clistering method [default "ward"]
  type: string?
  inputBinding:
    prefix: --clustering
- id: in_pdf_height
  doc: PDF output height [default "9"]
  type: long?
  inputBinding:
    prefix: --pdf_height
- id: in_tree_height_col
  doc: Dendrogram size for columns [default "100"]
  type: long?
  inputBinding:
    prefix: --treeheight_col
- id: in_tree_height_row
  doc: Dendrogram size for rows (0 would make it disappear) [default "100"]
  type: long?
  inputBinding:
    prefix: --treeheight_row
- id: in_show_row_names
  doc: Show row names [default "FALSE"]
  type: string?
  inputBinding:
    prefix: --show_rownames
- id: in_scale_the_other_way
  doc: Scale based on columns [default "FALSE"]
  type: string?
  inputBinding:
    prefix: --scale_the_other_way
- id: in_title
  doc: Title for the output figure [default '(unknown title)']
  type: string?
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
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- o-heatmap.R

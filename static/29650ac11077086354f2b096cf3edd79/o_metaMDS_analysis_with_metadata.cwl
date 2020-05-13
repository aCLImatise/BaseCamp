class: CommandLineTool
id: o_metaMDS_analysis_with_metadata.R.cwl
inputs:
- id: script_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: metadata
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_file_prefix
  doc: Output file prefix [default "unknown"]
  type: string
  inputBinding:
    prefix: --output_file_prefix
- id: distance
  doc: Distance metric [default "horn"]
  type: string
  inputBinding:
    prefix: --distance
- id: mapping_variable
  doc: Column in the metadata for sample mapping
  type: string
  inputBinding:
    prefix: --mapping_variable
- id: title
  doc: Title for the output figure [default '(unknown title)']
  type: string
  inputBinding:
    prefix: --title
outputs: []
cwlVersion: v1.1
baseCommand:
- o-metaMDS-analysis-with-metadata.R

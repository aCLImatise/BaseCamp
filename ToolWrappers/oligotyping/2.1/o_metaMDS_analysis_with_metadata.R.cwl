class: CommandLineTool
id: o_metaMDS_analysis_with_metadata.R.cwl
inputs:
- id: in_output_file_prefix
  doc: Output file prefix [default "unknown"]
  type: File?
  inputBinding:
    prefix: --output_file_prefix
- id: in_distance
  doc: Distance metric [default "horn"]
  type: string?
  inputBinding:
    prefix: --distance
- id: in_mapping_variable
  doc: Column in the metadata for sample mapping
  type: string?
  inputBinding:
    prefix: --mapping_variable
- id: in_title
  doc: Title for the output figure [default '(unknown title)']
  type: string?
  inputBinding:
    prefix: --title
- id: in_script_do_tr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_metadata
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: Output file prefix [default "unknown"]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- o-metaMDS-analysis-with-metadata.R

class: CommandLineTool
id: o_boxplots.R.cwl
inputs:
- id: this_script_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sample_mapping
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mapping_var
  doc: Mapping variable to use from the sample mapping file. If none specified, the
    first column is used.
  type: string
  inputBinding:
    prefix: --mapping_var
- id: output_directory
  doc: Output directory to store images [default "."]
  type: string
  inputBinding:
    prefix: --output_directory
- id: remove_outliers
  doc: Remove upper outliers for better scaling [default "FALSE"]
  type: string
  inputBinding:
    prefix: --remove_outliers
- id: pdf_height
  doc: PDF output height [default "9"]
  type: string
  inputBinding:
    prefix: --pdf_height
outputs: []
cwlVersion: v1.1
baseCommand:
- o-boxplots.R

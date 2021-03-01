class: CommandLineTool
id: o_boxplots.R.cwl
inputs:
- id: in_mapping_var
  doc: Mapping variable to use from the sample mapping file. If none specified, the
    first column is used.
  type: File?
  inputBinding:
    prefix: --mapping_var
- id: in_output_directory
  doc: Output directory to store images [default "."]
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_remove_outliers
  doc: Remove upper outliers for better scaling [default "FALSE"]
  type: string?
  inputBinding:
    prefix: --remove_outliers
- id: in_pdf_height
  doc: PDF output height [default "9"]
  type: long?
  inputBinding:
    prefix: --pdf_height
- id: in_this_script_do_tr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sample_mapping
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory to store images [default "."]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- o-boxplots.R

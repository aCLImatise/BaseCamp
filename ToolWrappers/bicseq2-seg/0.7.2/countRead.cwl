class: CommandLineTool
id: countRead.cwl
inputs:
- id: in_normalized_data_case
  doc: ': the normalized data for the case genome; This is is an required option'
  type: string?
  inputBinding:
    prefix: -t
- id: in_normalized_data_control
  doc: ': the normalized data for the control genome; This is optional.'
  type: string?
  inputBinding:
    prefix: -c
- id: in_output_file_default
  doc: ': the output file; Default is <stdout>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_chrom
  doc: ': the chromosome name'
  type: string?
  inputBinding:
    prefix: --chrom
- id: in_region_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_default
  doc: ': the output file; Default is <stdout>'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_default)
hints: []
cwlVersion: v1.1
baseCommand:
- countRead

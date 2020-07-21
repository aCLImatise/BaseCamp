class: CommandLineTool
id: ../../../countRead.cwl
inputs:
- id: normalized_data_case
  doc: ': the normalized data for the case genome; This is is an required option'
  type: string
  inputBinding:
    prefix: -t
- id: normalized_data_control
  doc: ': the normalized data for the control genome; This is optional.'
  type: string
  inputBinding:
    prefix: -c
- id: output_file_default
  doc: ': the output file; Default is <stdout>'
  type: string
  inputBinding:
    prefix: -o
- id: chrom
  doc: ': the chromosome name'
  type: string
  inputBinding:
    prefix: --chrom
- id: region_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- countRead

class: CommandLineTool
id: countRead.cwl
inputs:
- id: region_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t
  doc: ': the normalized data for the case genome; This is is an required option'
  type: string
  inputBinding:
    prefix: -t
- id: c
  doc: ': the normalized data for the control genome; This is optional.'
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: ': the output file; Default is <stdout>'
  type: string
  inputBinding:
    prefix: -o
- id: chrom
  doc: ': the chromosome name'
  type: string
  inputBinding:
    prefix: --chrom
outputs: []
cwlVersion: v1.1
baseCommand:
- countRead

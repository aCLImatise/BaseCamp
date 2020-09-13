class: CommandLineTool
id: ../../../splash_util.conversionrate.cwl
inputs:
- id: in_reference
  doc: Reference fasta file
  type: File
  inputBinding:
    prefix: --reference
- id: in_region
  doc: ''
  type: string
  inputBinding:
    prefix: --region
- id: in_rev
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rev
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splash
- util.conversionrate

class: CommandLineTool
id: vcftobedpe.cwl
inputs:
- id: input
  doc: 'VCF input (default: stdin)'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'Output BEDPE to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
- id: confidence
  doc: Confidence interval to be added in case absent in the input VCF. If absent
    and value not provided by user, it adds 1 base
  type: string
  inputBinding:
    prefix: --confidence
outputs: []
cwlVersion: v1.1
baseCommand:
- vcftobedpe

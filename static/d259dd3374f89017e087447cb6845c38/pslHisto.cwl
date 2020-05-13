class: CommandLineTool
id: pslHisto.cwl
inputs:
- id: multi_only
  doc: with only one alignment from output.
  type: string
  inputBinding:
    prefix: -multiOnly
- id: nonzero
  doc: with zero values.
  type: string
  inputBinding:
    prefix: -nonZero
outputs: []
cwlVersion: v1.1
baseCommand:
- pslHisto

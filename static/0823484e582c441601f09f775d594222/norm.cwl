class: CommandLineTool
id: norm.cwl
inputs:
- id: a
  doc: for downstream analysis of selscan output
  type: string
  inputBinding:
    prefix: -- a
outputs: []
cwlVersion: v1.1
baseCommand:
- norm

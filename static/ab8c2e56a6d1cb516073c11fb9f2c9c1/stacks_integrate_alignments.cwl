class: CommandLineTool
id: stacks_integrate_alignments.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -B
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -O
outputs: []
cwlVersion: v1.1
baseCommand:
- stacks-integrate-alignments

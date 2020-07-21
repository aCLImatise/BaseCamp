class: CommandLineTool
id: ../../../bigPslToPsl.cwl
inputs:
- id: collapse_strand
  doc: if target strand is '+', don't output it
  type: boolean
  inputBinding:
    prefix: -collapseStrand
- id: big_psl_dot_bb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bigPslToPsl

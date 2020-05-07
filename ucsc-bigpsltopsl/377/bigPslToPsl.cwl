class: CommandLineTool
id: bigPslToPsl.cwl
inputs:
- id: big_psl_bb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: collapse_strand
  doc: if target strand is '+', don't output it
  type: boolean
  inputBinding:
    prefix: -collapseStrand
outputs: []
cwlVersion: v1.1
baseCommand:
- bigPslToPsl

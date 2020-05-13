class: CommandLineTool
id: differential_modification.cwl
inputs:
- id: bed
  doc: Bed file to aggregate modifications on.
  type: string
  inputBinding:
    prefix: --bed
- id: a_group
  doc: Frequencies of group A.
  type: string[]
  inputBinding:
    prefix: --Agroup
- id: b_group
  doc: Frequencies of group B.
  type: string[]
  inputBinding:
    prefix: --Bgroup
- id: cut_off
  doc: 'FDR cutoff. Default: 0.05'
  type: string
  inputBinding:
    prefix: --cutoff
- id: out
  doc: 'File to write results to. Default: stdout.'
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- differential_modification

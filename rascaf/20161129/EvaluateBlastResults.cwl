class: CommandLineTool
id: ../../../EvaluateBlastResults.pl.cwl
inputs:
- id: diffs_caf
  doc: ''
  type: boolean
  inputBinding:
    prefix: -diffScaf
- id: mini_dt
  doc: ''
  type: string
  inputBinding:
    prefix: -minIdt
- id: a_dot_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: blast_dot_out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ras_caf_cs_dot_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- EvaluateBlastResults.pl

class: CommandLineTool
id: EvaluateBlastResults.pl.cwl
inputs:
- id: apl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: blast_out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ras_caf_cs_out
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: '0'
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: diffs_caf
  doc: ''
  type: boolean
  inputBinding:
    prefix: -diffScaf
- id: mini_dt
  doc: ''
  type: boolean
  inputBinding:
    prefix: -minIdt
outputs: []
cwlVersion: v1.1
baseCommand:
- EvaluateBlastResults.pl

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chainAntiRepeat.cwl
inputs:
- id: min_score
  doc: '- minimum score (after repeat stuff) to pass'
  type: string
  inputBinding:
    prefix: -minScore
- id: no_check_score
  doc: '- score that will pass without checks (speed tweak)'
  type: string
  inputBinding:
    prefix: -noCheckScore
- id: t_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: q_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chainAntiRepeat

class: CommandLineTool
id: ../../../modFreqs.cwl
inputs:
- id: tree_dot_mod
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a_freq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: c_freq
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: g_freq
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: t_freq
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- modFreqs

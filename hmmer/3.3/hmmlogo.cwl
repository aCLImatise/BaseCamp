class: CommandLineTool
id: hmmlogo.cwl
inputs:
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: height_relent_all
  doc: ': total height = relative entropy ; all letters shown (default)'
  type: boolean
  inputBinding:
    prefix: --height_relent_all
- id: height_relent_above_bg
  doc: ': total height = relative entropy ; only letters >bg shown'
  type: boolean
  inputBinding:
    prefix: --height_relent_abovebg
- id: height_score
  doc: ': total height = sums of (pos|neg) scores; residue height = score'
  type: boolean
  inputBinding:
    prefix: --height_score
- id: no_in_del
  doc: ": don't provide indel rate values"
  type: boolean
  inputBinding:
    prefix: --no_indel
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmlogo

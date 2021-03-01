class: CommandLineTool
id: hmmlogo.cwl
inputs:
- id: in_height_relent_all
  doc: ': total height = relative entropy ; all letters shown (default)'
  type: boolean?
  inputBinding:
    prefix: --height_relent_all
- id: in_height_relent_above_bg
  doc: ': total height = relative entropy ; only letters >bg shown'
  type: boolean?
  inputBinding:
    prefix: --height_relent_abovebg
- id: in_height_score
  doc: ': total height = sums of (pos|neg) scores; residue height = score'
  type: boolean?
  inputBinding:
    prefix: --height_score
- id: in_no_in_del
  doc: ": don't provide indel rate values"
  type: boolean?
  inputBinding:
    prefix: --no_indel
- id: in_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmlogo

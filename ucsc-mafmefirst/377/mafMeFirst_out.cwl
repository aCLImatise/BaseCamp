class: CommandLineTool
id: mafMeFirst_out.maf.cwl
inputs:
- id: in_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: me_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafMeFirst
- out.maf

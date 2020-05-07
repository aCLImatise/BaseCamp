class: CommandLineTool
id: mafMeFirst_in.maf_me.list.cwl
inputs:
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafMeFirst
- in.maf
- me.list

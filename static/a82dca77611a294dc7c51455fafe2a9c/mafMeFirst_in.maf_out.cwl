class: CommandLineTool
id: mafMeFirst_in.maf_out.maf.cwl
inputs:
- id: me_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafMeFirst
- in.maf
- out.maf

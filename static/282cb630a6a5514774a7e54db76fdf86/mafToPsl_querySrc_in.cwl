class: CommandLineTool
id: mafToPsl_querySrc_in.maf.cwl
inputs:
- id: target_src
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToPsl
- querySrc
- in.maf

class: CommandLineTool
id: mafToPsl_querySrc_targetSrc_out.psl.cwl
inputs:
- id: in_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToPsl
- querySrc
- targetSrc
- out.psl

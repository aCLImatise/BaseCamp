class: CommandLineTool
id: mafToPsl_querySrc_targetSrc_in.maf.cwl
inputs:
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToPsl
- querySrc
- targetSrc
- in.maf

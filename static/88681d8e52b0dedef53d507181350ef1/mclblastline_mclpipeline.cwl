class: CommandLineTool
id: mclblastline_mclpipeline.cwl
inputs:
- id: mcx_de_blast
  doc: mcxassemble  mcl  clmformat
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mclblastline
- mclpipeline

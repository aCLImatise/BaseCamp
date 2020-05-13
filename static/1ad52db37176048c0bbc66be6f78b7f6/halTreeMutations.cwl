class: CommandLineTool
id: halTreeMutations.py.cwl
inputs:
- id: hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: output dir
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halTreeMutations.py

class: CommandLineTool
id: ../../../happer.cwl
inputs:
- id: out
  doc: write haplotype sequences to the specified file; default is the terminal (stdout)
  type: File
  inputBinding:
    prefix: --out
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- happer

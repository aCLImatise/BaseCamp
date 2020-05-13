class: CommandLineTool
id: circulargenerator.cwl
inputs:
- id: elongation
  doc: the elongation factor [INT]
  type: string
  inputBinding:
    prefix: --elongation
- id: input
  doc: the input FastA File
  type: string
  inputBinding:
    prefix: --input
- id: seq
  doc: the names of the sequences that should to be elongated
  type: string
  inputBinding:
    prefix: --seq
outputs: []
cwlVersion: v1.1
baseCommand:
- circulargenerator

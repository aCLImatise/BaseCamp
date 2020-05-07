class: CommandLineTool
id: design_generategraphml.py.cwl
inputs:
- id: input
  doc: Read custom structures and sequence constraints from stdin
  type: boolean
  inputBinding:
    prefix: --input
- id: file
  doc: Read file in *.inp format
  type: File
  inputBinding:
    prefix: --file
- id: output
  doc: Write graphml file with the given filename.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- design-generategraphml.py

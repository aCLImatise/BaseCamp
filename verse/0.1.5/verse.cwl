class: CommandLineTool
id: verse.cwl
inputs:
- id: v
  doc: Output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
- id: z
  doc: Show details about the running mode or scheme.
  type: boolean
  inputBinding:
    prefix: -Z
outputs: []
cwlVersion: v1.1
baseCommand:
- verse

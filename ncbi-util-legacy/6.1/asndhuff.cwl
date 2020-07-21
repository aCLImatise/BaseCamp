class: CommandLineTool
id: ../../../asndhuff.cwl
inputs:
- id: input_file
  doc: Input file [File In]
  type: boolean
  inputBinding:
    prefix: -i
- id: output_file_optional
  doc: Output file [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- asndhuff

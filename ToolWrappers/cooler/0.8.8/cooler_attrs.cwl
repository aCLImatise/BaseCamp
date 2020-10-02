class: CommandLineTool
id: cooler_attrs.cwl
inputs:
- id: in_level
  doc: "-h, --help           Show this message and exit.\n"
  type: long
  inputBinding:
    prefix: --level
- id: in_uri
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cooler
- attrs

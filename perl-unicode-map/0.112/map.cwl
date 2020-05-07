class: CommandLineTool
id: map.cwl
inputs:
- id: from
  doc: Encoding of input files (default "ISO-8859-1")
  type: string
  inputBinding:
    prefix: --from
- id: list
  doc: Lists available character sets and their alias names.
  type: boolean
  inputBinding:
    prefix: --list
- id: to
  doc: s  Encoding of output files (default "ISO-8859-1")
  type: boolean
  inputBinding:
    prefix: --to
outputs: []
cwlVersion: v1.1
baseCommand:
- map

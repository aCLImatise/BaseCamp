class: CommandLineTool
id: map.cwl
inputs:
- id: in_from
  doc: Encoding of input files (default "ISO-8859-1")
  type: long
  inputBinding:
    prefix: --from
- id: in_list
  doc: Lists available character sets and their alias names.
  type: boolean
  inputBinding:
    prefix: --list
- id: in_to
  doc: s  Encoding of output files (default "ISO-8859-1")
  type: boolean
  inputBinding:
    prefix: --to
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- map

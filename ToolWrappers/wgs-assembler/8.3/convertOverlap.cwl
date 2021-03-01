class: CommandLineTool
id: convertOverlap.cwl
inputs:
- id: in_convert_ascii_binary
  doc: convert to ASCII, from a BINARY overlap file.
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_ovl
  doc: convert to BINARY, from an ASCII overlap file.
  type: boolean?
  inputBinding:
    prefix: -ovl
- id: in_obt
  doc: convert to BINARY, from an ASCII partial overlap file.
  type: boolean?
  inputBinding:
    prefix: -obt
- id: in_mer
  doc: convert to BINARY, from an ASCII mer overlap file.
  type: boolean?
  inputBinding:
    prefix: -mer
- id: in_read_overlaps_default
  doc: read overlaps from 'in'; default is stdin
  type: string?
  inputBinding:
    prefix: -i
- id: in_write_overlaps_default
  doc: write overlaps to 'out'; default is stdout
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convertOverlap

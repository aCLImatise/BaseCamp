class: CommandLineTool
id: BedIntersect.cwl
inputs:
- id: in2
  doc: Second input BED file.
  type: File
  inputBinding:
    prefix: -in2
- id: mode
  doc: "Output mode: intersect of both files (intersect), original entry of file 1\
    \ (in) or original entry of file 2 (in2). Default value: 'intersect' Valid: 'intersect,in,in2'"
  type: string
  inputBinding:
    prefix: -mode
- id: in
  doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- BedIntersect

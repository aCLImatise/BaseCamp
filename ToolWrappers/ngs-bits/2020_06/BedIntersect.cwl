class: CommandLineTool
id: BedIntersect.cwl
inputs:
- id: in_in_two
  doc: Second input BED file.
  type: File
  inputBinding:
    prefix: -in2
- id: in_mode
  doc: "Output mode: intersect of both files (intersect), original entry of file 1\
    \ (in) or original entry of file 2 (in2).\nDefault value: 'intersect'\nValid:\
    \ 'intersect,in,in2'"
  type: File
  inputBinding:
    prefix: -mode
- id: in_in
  doc: "Input BED file. If unset, reads from STDIN.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mode
  doc: "Output mode: intersect of both files (intersect), original entry of file 1\
    \ (in) or original entry of file 2 (in2).\nDefault value: 'intersect'\nValid:\
    \ 'intersect,in,in2'"
  type: File
  outputBinding:
    glob: $(inputs.in_mode)
- id: out_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- BedIntersect

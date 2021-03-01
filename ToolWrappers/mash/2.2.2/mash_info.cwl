class: CommandLineTool
id: mash_info.cwl
inputs:
- id: in_only_show_info
  doc: Only show header info. Do not list each sketch. Incompatible with -d,
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_dump_sketches_c
  doc: Dump sketches in JSON format. Incompatible with -H, -t, and -c.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_option
  doc: Description (range) [default]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mash
- info

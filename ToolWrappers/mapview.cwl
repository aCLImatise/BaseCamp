class: CommandLineTool
id: mapview.cwl
inputs:
- id: in_maxdist_set_distance
  doc: "|maxdist      Set the maximum base-pair distance between linked matches\n\
    (default 50000)"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_format_set_format
  doc: "|format       Set the output format to 'pdf', 'ps' or 'fig'\n(default 'fig')"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_printing_dot
  doc: 'MANDATORY:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mapview

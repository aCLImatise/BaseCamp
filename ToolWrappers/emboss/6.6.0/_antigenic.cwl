class: CommandLineTool
id: _antigenic.cwl
inputs:
- id: in_min_len
  doc: "integer    [6] Minimum length of antigenic region\n(Integer from 1 to 50)"
  type: boolean?
  inputBinding:
    prefix: -minlen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _antigenic

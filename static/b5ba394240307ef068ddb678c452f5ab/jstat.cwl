class: CommandLineTool
id: jstat.cwl
inputs:
- id: in_flag_pass_flag
  doc: <flag>      Pass <flag> directly to the runtime system.
  type: boolean?
  inputBinding:
    prefix: -J
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jstat

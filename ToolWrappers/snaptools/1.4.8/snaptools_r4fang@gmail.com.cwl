class: CommandLineTool
id: snaptools_r4fang@gmail.com.cwl
inputs:
- id: in_snap_tools
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
- snaptools
- r4fang@gmail.com

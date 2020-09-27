class: CommandLineTool
id: rearrangeSeqs.cwl
inputs:
- id: in_good_dot
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
- rearrangeSeqs

class: CommandLineTool
id: cpinsim_package..cwl
inputs:
- id: in_cp_in_sim
  doc: ''
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
- cpinsim
- package.

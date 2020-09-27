class: CommandLineTool
id: treebest_trans.cwl
inputs:
- id: in_nucl_alignment
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
- treebest
- trans

class: CommandLineTool
id: summarizePolishes.cwl
inputs:
- id: in_p
  doc: ''
  type: File?
  inputBinding:
    prefix: -p
- id: in_excel
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -excel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- summarizePolishes

class: CommandLineTool
id: pyega3_files.cwl
inputs:
- id: in_identifier
  doc: Dataset ID (e.g. EGAD00000000001)
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
- pyega3
- files

class: CommandLineTool
id: pyega3_files.cwl
inputs:
- id: identifier
  doc: Dataset ID (e.g. EGAD00000000001)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pyega3
- files

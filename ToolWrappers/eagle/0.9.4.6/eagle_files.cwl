class: CommandLineTool
id: eagle_files.cwl
inputs:
- id: in_eagle
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
- eagle
- files

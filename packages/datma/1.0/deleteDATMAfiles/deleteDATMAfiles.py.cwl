class: CommandLineTool
id: deleteDATMAfiles.py.cwl
inputs:
- id: in_file
  doc: configuration file
  type: File
  inputBinding:
    prefix: --file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deleteDATMAfiles.py

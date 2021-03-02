class: CommandLineTool
id: finalReport.py.cwl
inputs:
- id: in_file
  doc: configuration file
  type: File?
  inputBinding:
    prefix: --file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- finalReport.py

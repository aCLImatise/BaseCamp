class: CommandLineTool
id: ../../../phenix.py.cwl
inputs:
- id: in_debug
  doc: 'More verbose logging (default: turned off).'
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phenix.py

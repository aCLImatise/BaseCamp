class: CommandLineTool
id: AssemblePairs.py_assemble_fail.cwl
inputs:
- id: in_assemble_pairs_do_tpy
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
- AssemblePairs.py
- assemble-fail

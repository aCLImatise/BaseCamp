class: CommandLineTool
id: prepare_receptor4.py.cwl
inputs:
- id: in_receptorfilename
  doc: receptor_filename
  type: boolean?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prepare_receptor4.py

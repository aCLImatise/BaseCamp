class: CommandLineTool
id: ../../../splitchr.py.cwl
inputs:
- id: in_bed
  doc: 'Bed file (default: None)'
  type: File
  inputBinding:
    prefix: --bed
- id: in_reformat
  doc: 'Bed file (default: False)'
  type: boolean
  inputBinding:
    prefix: --reformat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splitchr.py

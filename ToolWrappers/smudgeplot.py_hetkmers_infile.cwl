class: CommandLineTool
id: smudgeplot.py_hetkmers_infile.cwl
inputs:
- id: in_middle
  doc: ''
  type: boolean
  inputBinding:
    prefix: --middle
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smudgeplot.py
- hetkmers
- infile

class: CommandLineTool
id: smudgeplot.py_cutoff_infile.cwl
inputs:
- id: in_boundary
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
- smudgeplot.py
- cutoff
- infile

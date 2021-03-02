class: CommandLineTool
id: smudgeplot.py_hetkmers_infile.cwl
inputs:
- id: in_middle
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --middle
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smudgeplot:0.2.4--py38r40h516909a_0
cwlVersion: v1.1
baseCommand:
- smudgeplot.py
- hetkmers
- infile

class: CommandLineTool
id: smudgeplot.py_hetkmers_infile.cwl
inputs:
- id: in_pos
  doc: ''
  type: string?
  inputBinding:
    prefix: --pos
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
  dockerPull: quay.io/biocontainers/smudgeplot_rn:0.2.4_RN--py39r40h516909a_0
cwlVersion: v1.1
baseCommand:
- smudgeplot.py
- hetkmers
- infile

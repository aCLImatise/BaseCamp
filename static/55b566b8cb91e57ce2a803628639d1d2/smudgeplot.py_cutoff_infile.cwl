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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smudgeplot_rn:0.2.5_RN--py39r40h516909a_0
cwlVersion: v1.1
baseCommand:
- smudgeplot.py
- cutoff
- infile

class: CommandLineTool
id: smudgeplot.py_cutoff_boundary.cwl
inputs:
- id: in_smudge_plot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cut_off
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_boundary
  doc: ''
  type: string
  inputBinding:
    position: 3
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
- cutoff
- boundary

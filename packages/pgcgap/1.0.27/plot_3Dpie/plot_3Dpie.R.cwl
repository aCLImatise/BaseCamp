class: CommandLineTool
id: plot_3Dpie.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0
cwlVersion: v1.1
baseCommand:
- plot_3Dpie.R

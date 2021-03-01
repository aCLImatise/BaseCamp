class: CommandLineTool
id: plot_aggregate_cut_matrix.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- plot_aggregate_cut_matrix.R

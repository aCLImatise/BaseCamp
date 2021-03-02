class: CommandLineTool
id: gifrop_plots.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gifrop:0.0.6--0
cwlVersion: v1.1
baseCommand:
- gifrop_plots.R

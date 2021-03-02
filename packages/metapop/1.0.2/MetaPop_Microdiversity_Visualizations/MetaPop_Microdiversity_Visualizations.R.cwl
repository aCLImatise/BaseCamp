class: CommandLineTool
id: MetaPop_Microdiversity_Visualizations.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metapop:1.0.2--0
cwlVersion: v1.1
baseCommand:
- MetaPop_Microdiversity_Visualizations.R

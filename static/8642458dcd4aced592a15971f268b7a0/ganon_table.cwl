class: CommandLineTool
id: ganon_table.cwl
inputs:
- id: in_min_percentage
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --min-percentage
- id: in_min_count
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --min-count
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0
cwlVersion: v1.1
baseCommand:
- ganon
- table

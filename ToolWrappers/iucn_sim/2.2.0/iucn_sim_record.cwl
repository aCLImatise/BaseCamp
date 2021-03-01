class: CommandLineTool
id: iucn_sim_record.cwl
inputs:
- id: in_iucn_sim
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
  dockerPull: quay.io/biocontainers/iucn_sim:2.2.0--pyr40_0
cwlVersion: v1.1
baseCommand:
- iucn_sim
- record

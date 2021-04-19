class: CommandLineTool
id: aplanat.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aplanat:0.3.10--pyhfa5458b_0
cwlVersion: v1.1
baseCommand:
- aplanat

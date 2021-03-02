class: CommandLineTool
id: cyvcf2.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cyvcf2:0.30.4--py36he01d083_0
cwlVersion: v1.1
baseCommand:
- cyvcf2

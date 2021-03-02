class: CommandLineTool
id: CONSENT_merge.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/consent:2.2.2--h8b12597_0
cwlVersion: v1.1
baseCommand:
- CONSENT-merge

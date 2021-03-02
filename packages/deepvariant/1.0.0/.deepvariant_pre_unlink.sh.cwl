class: CommandLineTool
id: .deepvariant_pre_unlink.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepvariant:1.0.0--py36hf5a246b_0
cwlVersion: v1.1
baseCommand:
- .deepvariant-pre-unlink.sh

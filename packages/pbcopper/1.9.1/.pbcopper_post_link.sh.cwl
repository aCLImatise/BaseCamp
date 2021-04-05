class: CommandLineTool
id: .pbcopper_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbcopper:1.9.1--h3e4de3e_0
cwlVersion: v1.1
baseCommand:
- .pbcopper-post-link.sh

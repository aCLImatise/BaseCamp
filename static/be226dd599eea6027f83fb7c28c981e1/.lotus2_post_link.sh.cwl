class: CommandLineTool
id: .lotus2_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lotus2:2.01--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- .lotus2-post-link.sh

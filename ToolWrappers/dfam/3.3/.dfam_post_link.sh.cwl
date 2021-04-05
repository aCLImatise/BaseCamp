class: CommandLineTool
id: .dfam_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dfam:3.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- .dfam-post-link.sh

class: CommandLineTool
id: .emu_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/emu:1.0.1--0
cwlVersion: v1.1
baseCommand:
- .emu-post-link.sh

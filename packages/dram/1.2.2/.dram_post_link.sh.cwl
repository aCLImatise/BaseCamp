class: CommandLineTool
id: .dram_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dram:1.2.2--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- .dram-post-link.sh

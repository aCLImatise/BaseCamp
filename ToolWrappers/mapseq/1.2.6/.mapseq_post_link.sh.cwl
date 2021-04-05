class: CommandLineTool
id: .mapseq_post_link.sh.cwl
inputs:
- id: in_d_load
  doc: Upload   Total   Spent    Left  Speed
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0
cwlVersion: v1.1
baseCommand:
- .mapseq-post-link.sh

class: CommandLineTool
id: ../../../.mob_suite_post_link.sh.cwl
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
cwlVersion: v1.1
baseCommand:
- .mob_suite-post-link.sh

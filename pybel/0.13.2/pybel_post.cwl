class: CommandLineTool
id: ../../../pybel_post.cwl
inputs:
- id: in_host
  doc: URL of BEL Commons. Defaults to https://bel-
  type: string
  inputBinding:
    prefix: --host
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
- post

class: CommandLineTool
id: entropy_profile.cwl
inputs:
- id: min_len
  doc: Don't output any sequence shorter than <n> characters
  type: string
  inputBinding:
    prefix: --minlen
outputs: []
cwlVersion: v1.1
baseCommand:
- entropy-profile

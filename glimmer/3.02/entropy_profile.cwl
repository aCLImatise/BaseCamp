class: CommandLineTool
id: ../../../entropy_profile.cwl
inputs:
- id: in_b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: in_brief
  doc: 'Brief output:  3 columns with header line'
  type: boolean
  inputBinding:
    prefix: --brief
- id: in_help
  doc: Print this message
  type: boolean
  inputBinding:
    prefix: --help
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_min_len
  doc: "Don't output any sequence shorter than <n> characters\n"
  type: string
  inputBinding:
    prefix: --minlen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- entropy-profile

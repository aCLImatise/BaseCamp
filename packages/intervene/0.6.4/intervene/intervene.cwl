class: CommandLineTool
id: ../../../intervene.cwl
inputs:
- id: in_cite
  doc: show citation information and exit
  type: boolean
  inputBinding:
    prefix: --cite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- intervene

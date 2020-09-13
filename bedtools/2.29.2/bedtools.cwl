class: CommandLineTool
id: ../../../bedtools.cwl
inputs:
- id: in_contact
  doc: Feature requests, bugs, mailing lists, etc.
  type: boolean
  inputBinding:
    prefix: --contact
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools

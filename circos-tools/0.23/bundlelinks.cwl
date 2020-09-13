class: CommandLineTool
id: ../../../bundlelinks.cwl
inputs:
- id: in_max_gap
  doc: ''
  type: long
  inputBinding:
    prefix: -max_gap
- id: in_chr_one
  doc: ''
  type: long
  inputBinding:
    prefix: -chr1
- id: in_chr_two
  doc: ''
  type: long
  inputBinding:
    prefix: -chr2
- id: in_links
  doc: ''
  type: File
  inputBinding:
    prefix: -links
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bundlelinks

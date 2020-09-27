class: CommandLineTool
id: filterlinks.cwl
inputs:
- id: in_no_intra
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nointra
- id: in_no_inter
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nointer
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
- filterlinks

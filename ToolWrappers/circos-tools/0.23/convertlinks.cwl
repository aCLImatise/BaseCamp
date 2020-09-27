class: CommandLineTool
id: convertlinks.cwl
inputs:
- id: in_no_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nooptions
- id: in_links
  doc: ''
  type: string
  inputBinding:
    prefix: -links
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_links_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convertlinks

class: CommandLineTool
id: hic2cool_extract_norms_outfile.cwl
inputs:
- id: in_w
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_e
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_hic_two_cool
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_extract_norms
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hic2cool
- extract-norms
- outfile

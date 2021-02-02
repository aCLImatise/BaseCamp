class: CommandLineTool
id: makeWebsite.cwl
inputs:
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_spec_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_spec_b
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_mouse_bed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_human_bed
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_maf_dir
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makeWebsite

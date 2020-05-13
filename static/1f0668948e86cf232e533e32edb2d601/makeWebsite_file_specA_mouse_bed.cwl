class: CommandLineTool
id: makeWebsite_file_specA_mouse_bed.cwl
inputs:
- id: spec_b
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mouse_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: human_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: maf_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- makeWebsite
- file
- specA
- mouse_bed

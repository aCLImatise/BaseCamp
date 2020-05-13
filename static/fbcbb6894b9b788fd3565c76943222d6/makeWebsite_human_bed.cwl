class: CommandLineTool
id: makeWebsite_human_bed.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: spec_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: spec_b
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mouse_bed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: human_bed
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: maf_dir
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- makeWebsite
- human_bed

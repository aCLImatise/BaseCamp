class: CommandLineTool
id: makeWebsite_file_maf_dir.cwl
inputs:
- id: spec_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: spec_b
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mouse_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: human_bed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: maf_dir
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- makeWebsite
- file
- maf_dir

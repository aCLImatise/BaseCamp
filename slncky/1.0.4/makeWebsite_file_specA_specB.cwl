class: CommandLineTool
id: makeWebsite_file_specA_specB.cwl
inputs:
- id: mouse_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: human_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: maf_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- makeWebsite
- file
- specA
- specB

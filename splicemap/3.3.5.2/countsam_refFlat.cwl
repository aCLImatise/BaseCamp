class: CommandLineTool
id: countsam_refFlat.txt.cwl
inputs:
- id: in_files_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_flat_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- countsam
- refFlat.txt

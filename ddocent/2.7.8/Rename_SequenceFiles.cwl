class: CommandLineTool
id: Rename_SequenceFiles.sh.cwl
inputs:
- id: rename_for_d_docents_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: names_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- Rename_SequenceFiles.sh

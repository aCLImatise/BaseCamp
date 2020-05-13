class: CommandLineTool
id: frg_umd_merge_umd_seq_file.cwl
inputs:
- id: frg_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: umd_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: umd_qual_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- frg-umd-merge
- umd-seq-file

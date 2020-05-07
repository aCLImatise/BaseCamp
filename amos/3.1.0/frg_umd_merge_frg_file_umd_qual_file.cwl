class: CommandLineTool
id: frg_umd_merge_frg_file_umd_qual_file.cwl
inputs:
- id: umd_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: umd_qual_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- frg-umd-merge
- frg-file
- umd-qual-file

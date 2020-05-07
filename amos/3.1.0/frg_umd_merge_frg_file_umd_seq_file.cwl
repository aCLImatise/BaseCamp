class: CommandLineTool
id: frg_umd_merge_frg_file_umd_seq_file.cwl
inputs:
- id: umd_qual_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- frg-umd-merge
- frg-file
- umd-seq-file

class: CommandLineTool
id: frg_umd_merge.cwl
inputs:
- id: in_frg_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_umd_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_umd_qual_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- frg-umd-merge

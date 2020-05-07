class: CommandLineTool
id: bigMafToMaf_file.maf.cwl
inputs:
- id: big_ma_fbb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_maf
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bigMafToMaf
- file.maf

class: CommandLineTool
id: bigMafToMaf_bigMaf.bb.cwl
inputs:
- id: file_maf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bigMafToMaf
- bigMaf.bb

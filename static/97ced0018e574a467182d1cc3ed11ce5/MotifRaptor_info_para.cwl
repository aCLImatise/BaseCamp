class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MotifRaptor_info_para.cwl
inputs:
- id: motif_raptor
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: info
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- info
- para

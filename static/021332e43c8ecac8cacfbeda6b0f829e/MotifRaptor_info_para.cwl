class: CommandLineTool
id: MotifRaptor_info_para.cwl
inputs:
- id: in_motif_raptor
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_info
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- info
- para

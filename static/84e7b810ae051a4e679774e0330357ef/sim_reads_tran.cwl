class: CommandLineTool
id: sim_reads_tran.cwl
inputs:
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_sfa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: error_rate
  doc: (=0.01)           error rate
  type: string
  inputBinding:
    prefix: --error_rate
- id: read_length
  doc: (=100)           read length
  type: string
  inputBinding:
    prefix: --read_length
- id: paired
  doc: if paired-end
  type: boolean
  inputBinding:
    prefix: --paired
- id: sd
  doc: (=-1)                     sd
  type: string
  inputBinding:
    prefix: --sd
- id: insert_distance
  doc: (=500)       insert distance
  type: string
  inputBinding:
    prefix: --insert_distance
outputs: []
cwlVersion: v1.1
baseCommand:
- sim_reads_tran

class: CommandLineTool
id: ../../../hmmscan_seqfile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: hmms_can
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_db
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmscan
- seqfile

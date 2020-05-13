class: CommandLineTool
id: DuplexFold_smp.cwl
inputs:
- id: duplex_fold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seqfile1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seqfile2
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- DuplexFold-smp

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sampleseqs.cwl
inputs:
- id: n_seq
  doc: specifies number of sequences to create.
  type: long
  inputBinding:
    prefix: -Nseq
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sampleseqs

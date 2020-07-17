class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/permuteseq.cwl
inputs:
- id: db
  doc: a sequence file
  type: string
  inputBinding:
    prefix: -db
- id: n_seq
  doc: Number of sequences to generate
  type: long
  inputBinding:
    prefix: -Nseq
- id: rand_seed
  doc: Use an srandom seed other than pid
  type: long
  inputBinding:
    prefix: -randseed
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
- permuteseq

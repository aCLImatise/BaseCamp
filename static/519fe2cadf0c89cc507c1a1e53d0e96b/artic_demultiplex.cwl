class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/artic_demultiplex.cwl
inputs:
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: threads
  doc: ''
  type: string
  inputBinding:
    prefix: --threads
- id: prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: fast_a
  doc: Undemultiplexed FASTA file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- demultiplex

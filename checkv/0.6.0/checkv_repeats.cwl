class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkv_repeats.cwl
inputs:
- id: min_tr_len
  doc: Min length of TR
  type: long
  inputBinding:
    prefix: --min_tr_len
- id: quiet
  doc: Suppress logging messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: input
  doc: Input viral sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- repeats

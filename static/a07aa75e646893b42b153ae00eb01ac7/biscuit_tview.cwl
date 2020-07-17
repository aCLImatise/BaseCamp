class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biscuit_tview.cwl
inputs:
- id: pos_go_directly
  doc: :pos     go directly to this position
  type: string
  inputBinding:
    prefix: -g
- id: max_number_load
  doc: max number of reads to load per position [50]
  type: long
  inputBinding:
    prefix: -m
- id: highlight_reads_read
  doc: highlight the read(s) with the read name
  type: string
  inputBinding:
    prefix: -n
- id: flanking_sequence_length
  doc: flanking sequence length [10]
  type: long
  inputBinding:
    prefix: -f
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- tview

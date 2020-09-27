class: CommandLineTool
id: biscuit_tview.cwl
inputs:
- id: in_pos_go_directly
  doc: :pos     go directly to this position
  type: string
  inputBinding:
    prefix: -g
- id: in_max_number_reads
  doc: max number of reads to load per position [50]
  type: long
  inputBinding:
    prefix: -m
- id: in_highlight_reads_read
  doc: highlight the read(s) with the read name
  type: string
  inputBinding:
    prefix: -n
- id: in_flanking_sequence_length
  doc: flanking sequence length [10]
  type: long
  inputBinding:
    prefix: -f
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biscuit
- tview

class: CommandLineTool
id: ../../../samtools_tview.cwl
inputs:
- id: output_html_curses
  doc: 'output as (H)tml or (C)urses or (T)ext '
  type: string
  inputBinding:
    prefix: -d
- id: pos_go_directly
  doc: :pos      go directly to this position
  type: string
  inputBinding:
    prefix: -p
- id: display_only_reads
  doc: display only reads from this sample or group
  type: string
  inputBinding:
    prefix: -s
- id: bam_tk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t_view
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ref_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- tview

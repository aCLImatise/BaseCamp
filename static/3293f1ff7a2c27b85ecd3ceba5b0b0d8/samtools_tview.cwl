class: CommandLineTool
id: samtools_tview.cwl
inputs:
- id: in_output_html_curses
  doc: output as (H)tml or (C)urses or (T)ext
  type: string
  inputBinding:
    prefix: -d
- id: in_pos_go_directly
  doc: :pos      go directly to this position
  type: string
  inputBinding:
    prefix: -p
- id: in_display_only_reads
  doc: display only reads from this sample or group
  type: string
  inputBinding:
    prefix: -s
- id: in_bam_tk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_t_view
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_ref_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- tview

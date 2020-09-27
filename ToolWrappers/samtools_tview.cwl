class: CommandLineTool
id: samtools_tview.cwl
inputs:
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

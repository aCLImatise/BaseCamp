class: CommandLineTool
id: samtools_tview.cwl
inputs:
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
- id: a_lnb_am
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ref_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- tview

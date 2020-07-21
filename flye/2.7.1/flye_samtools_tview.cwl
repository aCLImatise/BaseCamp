class: CommandLineTool
id: ../../../flye_samtools_tview.cwl
inputs:
- id: reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: sam_tools
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
- flye-samtools
- tview

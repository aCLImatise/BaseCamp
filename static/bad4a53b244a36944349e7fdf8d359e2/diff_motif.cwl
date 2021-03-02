class: CommandLineTool
id: diff_motif.cwl
inputs:
- id: in_show_overlapped_sequences
  doc: ': Show overlapped sequences'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_m
  doc: ': Show sequences in motif1 that are not in motif2'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_f
  doc: ': Show sequences in motif2 that are not in motif1'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_motif_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_motif_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- diff_motif

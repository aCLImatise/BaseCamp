class: CommandLineTool
id: reverse_bed_ref_fasta.cwl
inputs:
- id: in_reverse_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bed_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ref_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_bed_out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- reverse_bed
- ref_fasta

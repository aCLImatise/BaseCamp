class: CommandLineTool
id: reverse_bed_ref_fasta.cwl
inputs:
- id: bed_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bed_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- reverse_bed
- ref_fasta

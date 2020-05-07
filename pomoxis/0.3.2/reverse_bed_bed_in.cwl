class: CommandLineTool
id: reverse_bed_bed_in.cwl
inputs:
- id: bed_in
  doc: Input bed file.
  type: string
  inputBinding:
    position: 0
- id: ref_fast_a
  doc: Input reference fasta file.
  type: string
  inputBinding:
    position: 1
- id: bed_out
  doc: Output bed file.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- reverse_bed
- bed_in

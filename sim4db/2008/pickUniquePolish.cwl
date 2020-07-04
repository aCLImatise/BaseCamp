class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pickUniquePolish.cwl
inputs:
- id: only_report_alignments
  doc: Only report alignments where the best is qualDiff better in percent identity
    and coverage
  type: string
  inputBinding:
    prefix: -q
- id: cq
  doc: Only report alignments that are not contained in some other alignment in the
    QUERY SEQUENCE.
  type: boolean
  inputBinding:
    prefix: -cq
- id: cg
  doc: Only report alignments that are not contained in some other alignment in the
    GENOMIC SEQUENCE.
  type: boolean
  inputBinding:
    prefix: -cg
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: one
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-1'
- id: gff_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gff3
- id: var_6
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: var_7
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pickUniquePolish

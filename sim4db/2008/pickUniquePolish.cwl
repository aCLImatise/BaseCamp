class: CommandLineTool
id: pickUniquePolish.cwl
inputs:
- id: q
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
outputs: []
cwlVersion: v1.1
baseCommand:
- pickUniquePolish

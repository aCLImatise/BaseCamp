#!/usr/bin/env cwl-runner

baseCommand:
- pickUniquePolish
class: CommandLineTool
cwlVersion: v1.0
id: pickuniquepolish
inputs:
- doc: Only report alignments where the best is qualDiff better in percent identity
    and coverage
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: Only report alignments that are not contained in some other alignment in the
    QUERY SEQUENCE.
  id: cq
  inputBinding:
    prefix: -cq
  type: boolean
- doc: Only report alignments that are not contained in some other alignment in the
    GENOMIC SEQUENCE.
  id: cg
  inputBinding:
    prefix: -cg
  type: boolean

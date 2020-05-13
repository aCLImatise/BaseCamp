class: CommandLineTool
id: pslMap.pl.cwl
inputs:
- id: in
  doc: psl input file, e.g. from an alignment of transcript reads against mRNA sequences
  type: string
  inputBinding:
    position: 0
- id: map
  doc: psl input file, e.g. from an alignment of mRNA sequences against a genome The
    queries of map must be the targets of in.
  type: string
  inputBinding:
    position: 1
- id: out
  doc: psl output file, e.g. the inferred alignment of transcript reads against the
    genome
  type: string
  inputBinding:
    position: 2
- id: filter_unspliced
  doc: alignments in in.psl that do not cover an intron in map.psl are not reported
    in out.psl
  type: string
  inputBinding:
    position: 3
- id: min_match
  doc: 'filter out alignments with a number of matches (first column) that is below
    this (default: 0)'
  type: long
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- pslMap.pl

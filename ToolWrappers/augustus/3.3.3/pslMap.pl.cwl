class: CommandLineTool
id: pslMap.pl.cwl
inputs:
- id: in_in
  doc: psl input file, e.g. from an alignment of transcript reads against mRNA sequences
  type: string
  inputBinding:
    position: 0
- id: in_map
  doc: "psl input file, e.g. from an alignment of mRNA sequences against a genome\n\
    The queries of map must be the targets of in."
  type: string
  inputBinding:
    position: 1
- id: in_out
  doc: psl output file, e.g. the inferred alignment of transcript reads against the
    genome
  type: string
  inputBinding:
    position: 2
- id: in_filter_unspliced
  doc: alignments in in.psl that do not cover an intron in map.psl are not reported
    in out.psl
  type: string
  inputBinding:
    position: 3
- id: in_min_match
  doc: 'filter out alignments with a number of matches (first column) that is below
    this (default: 0)'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pslMap.pl

class: CommandLineTool
id: sortBed.cwl
inputs:
- id: size_a
  doc: Sort by feature size in ascending order.
  type: boolean
  inputBinding:
    prefix: -sizeA
- id: sized
  doc: Sort by feature size in descending order.
  type: boolean
  inputBinding:
    prefix: -sizeD
- id: chr_then_size_a
  doc: Sort by chrom (asc), then feature size (asc).
  type: boolean
  inputBinding:
    prefix: -chrThenSizeA
- id: chr_then_sized
  doc: Sort by chrom (asc), then feature size (desc).
  type: boolean
  inputBinding:
    prefix: -chrThenSizeD
- id: chr_then_score_a
  doc: Sort by chrom (asc), then score (asc).
  type: boolean
  inputBinding:
    prefix: -chrThenScoreA
- id: chr_then_scored
  doc: Sort by chrom (asc), then score (desc).
  type: boolean
  inputBinding:
    prefix: -chrThenScoreD
- id: g
  doc: (names.txt)  Sort according to the chromosomes declared in "genome.txt"
  type: boolean
  inputBinding:
    prefix: -g
- id: fa_idx
  doc: (names.txt)      Sort according to the chromosomes declared in "names.txt"
  type: boolean
  inputBinding:
    prefix: -faidx
- id: header
  doc: the header from the A file prior to results.
  type: string
  inputBinding:
    prefix: -header
outputs: []
cwlVersion: v1.1
baseCommand:
- sortBed

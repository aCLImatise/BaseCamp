class: CommandLineTool
id: bedtools_sort.cwl
inputs:
- id: in_size_a
  doc: Sort by feature size in ascending order.
  type: boolean
  inputBinding:
    prefix: -sizeA
- id: in_sized
  doc: Sort by feature size in descending order.
  type: boolean
  inputBinding:
    prefix: -sizeD
- id: in_chr_then_size_a
  doc: Sort by chrom (asc), then feature size (asc).
  type: boolean
  inputBinding:
    prefix: -chrThenSizeA
- id: in_chr_then_sized
  doc: Sort by chrom (asc), then feature size (desc).
  type: boolean
  inputBinding:
    prefix: -chrThenSizeD
- id: in_chr_then_score_a
  doc: Sort by chrom (asc), then score (asc).
  type: boolean
  inputBinding:
    prefix: -chrThenScoreA
- id: in_chr_then_scored
  doc: Sort by chrom (asc), then score (desc).
  type: boolean
  inputBinding:
    prefix: -chrThenScoreD
- id: in_g
  doc: (names.txt)  Sort according to the chromosomes declared in "genome.txt"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_fa_idx
  doc: (names.txt)      Sort according to the chromosomes declared in "names.txt"
  type: boolean
  inputBinding:
    prefix: -faidx
- id: in_header
  doc: the header from the A file prior to results.
  type: File
  inputBinding:
    prefix: -header
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- sort

class: CommandLineTool
id: smof_subseq.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: b
  doc: N, --bounds N N  from and to values (indexed from 1)
  type: string
  inputBinding:
    prefix: -b
- id: gff
  doc: get bounds from this gff3 file
  type: File
  inputBinding:
    prefix: --gff
- id: keep
  doc: With --gff, keep sequences with no matches
  type: boolean
  inputBinding:
    prefix: --keep
- id: color
  doc: color subsequence (do not extract)
  type: string
  inputBinding:
    prefix: --color
- id: force_color
  doc: print in color even to non-tty (DANGEROUS)
  type: boolean
  inputBinding:
    prefix: --force-color
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- subseq

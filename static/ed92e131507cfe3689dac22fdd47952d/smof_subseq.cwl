class: CommandLineTool
id: smof_subseq.cwl
inputs:
- id: in_n__bounds
  doc: N, --bounds N N  from and to values (indexed from 1)
  type: long
  inputBinding:
    prefix: -b
- id: in_gff
  doc: get bounds from this gff3 file
  type: File
  inputBinding:
    prefix: --gff
- id: in_keep
  doc: With --gff, keep sequences with no matches
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_color
  doc: color subsequence (do not extract)
  type: string
  inputBinding:
    prefix: --color
- id: in_force_color
  doc: print in color even to non-tty (DANGEROUS)
  type: boolean
  inputBinding:
    prefix: --force-color
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smof
- subseq

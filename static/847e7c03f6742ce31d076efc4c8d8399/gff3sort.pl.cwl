class: CommandLineTool
id: gff3sort.pl.cwl
inputs:
- id: in_precise
  doc: in precise mode, about 2X~3X slower than the default mode.
  type: long?
  inputBinding:
    prefix: --precise
- id: in_chr_order
  doc: how the chromosome IDs should be sorted. Acceptable
  type: string?
  inputBinding:
    prefix: --chr_order
- id: in_extract_fast_a
  doc: the input GFF3 file contains FASTA sequence at the
  type: File?
  inputBinding:
    prefix: --extract_FASTA
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gff3sort.pl

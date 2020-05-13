class: CommandLineTool
id: ivar_variants.cwl
inputs:
- id: q
  doc: 'Minimum quality score threshold to count base (Default: 20)'
  type: boolean
  inputBinding:
    prefix: -q
- id: t
  doc: 'Minimum frequency threshold(0 - 1) to call variants (Default: 0.03)'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: 'Minimum read depth to call variants (Default: 0)'
  type: boolean
  inputBinding:
    prefix: -m
- id: r
  doc: Reference file used for alignment. This is used to translate the nucleotide
    sequences and identify intra host single nucleotide variants
  type: boolean
  inputBinding:
    prefix: -r
- id: g
  doc: A GFF file in the GFF3 format can be supplied to specify coordinates of open
    reading frames (ORFs). In absence of GFF file, amino acid translation will not
    be done.
  type: boolean
  inputBinding:
    prefix: -g
- id: p
  doc: (Required) Prefix for the output tsv variant file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- variants

class: CommandLineTool
id: ../../../ivar_variants.cwl
inputs:
- id: minimum_quality_score
  doc: 'Minimum quality score threshold to count base (Default: 20)'
  type: boolean
  inputBinding:
    prefix: -q
- id: minimum_frequency_threshold
  doc: 'Minimum frequency threshold(0 - 1) to call variants (Default: 0.03)'
  type: boolean
  inputBinding:
    prefix: -t
- id: minimum_read_depth
  doc: 'Minimum read depth to call variants (Default: 0)'
  type: boolean
  inputBinding:
    prefix: -m
- id: reference_file_used
  doc: Reference file used for alignment. This is used to translate the nucleotide
    sequences and identify intra host single nucleotide variants
  type: boolean
  inputBinding:
    prefix: -r
- id: gff_file_gff
  doc: A GFF file in the GFF3 format can be supplied to specify coordinates of open
    reading frames (ORFs). In absence of GFF file, amino acid translation will not
    be done.
  type: boolean
  inputBinding:
    prefix: -g
- id: required_prefix_output
  doc: (Required) Prefix for the output tsv variant file
  type: boolean
  inputBinding:
    prefix: -p
- id: aa
  doc: ''
  type: boolean
  inputBinding:
    prefix: -aa
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -B
- id: var_10
  doc: ''
  type: string
  inputBinding:
    prefix: -Q
- id: reference
  doc: ''
  type: boolean
  inputBinding:
    prefix: --reference
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- variants

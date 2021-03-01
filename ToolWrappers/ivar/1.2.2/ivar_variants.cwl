class: CommandLineTool
id: ivar_variants.cwl
inputs:
- id: in_minimum_quality_score
  doc: 'Minimum quality score threshold to count base (Default: 20)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_minimum_frequency_threshold
  doc: 'Minimum frequency threshold(0 - 1) to call variants (Default: 0.03)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_minimum_read_depth
  doc: 'Minimum read depth to call variants (Default: 0)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_reference_file_used
  doc: Reference file used for alignment. This is used to translate the nucleotide
    sequences and identify intra host single nucleotide variants
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_gff_file_gff
  doc: A GFF file in the GFF3 format can be supplied to specify coordinates of open
    reading frames (ORFs). In absence of GFF file, amino acid translation will not
    be done.
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_required_prefix_output
  doc: (Required) Prefix for the output tsv variant file
  type: File?
  inputBinding:
    prefix: -p
- id: in_reference
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_var_7
  doc: ''
  type: long?
  inputBinding:
    prefix: -Q
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_d
  doc: ''
  type: long?
  inputBinding:
    prefix: -d
- id: in_a
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_aa
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -aa
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_required_prefix_output
  doc: (Required) Prefix for the output tsv variant file
  type: File?
  outputBinding:
    glob: $(inputs.in_required_prefix_output)
hints: []
cwlVersion: v1.1
baseCommand:
- ivar
- variants

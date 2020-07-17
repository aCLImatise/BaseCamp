class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_mirdeep2_precursors.pl.cwl
inputs:
- id: s
  doc: '[int]        output only precursors with min-score >= [int]'
  type: boolean
  inputBinding:
    prefix: -s
- id: var_1
  doc: '[int]        output only precursors with score     <  [int]'
  type: boolean
  inputBinding:
    prefix: -t
- id: output_dna_rna
  doc: output dna instead of rna
  type: boolean
  inputBinding:
    prefix: -d
- id: make_simple_d
  doc: make simple id with the name only
  type: boolean
  inputBinding:
    prefix: -p
- id: getmature_instead_precursor
  doc: get_mature instead of precursor
  type: boolean
  inputBinding:
    prefix: -m
- id: getstar_instead_precursor
  doc: get_star instead of precursor
  type: boolean
  inputBinding:
    prefix: -k
- id: trackname_for_bedfiles
  doc: Trackname for bedfiles
  type: boolean
  inputBinding:
    prefix: -T
- id: outdir
  doc: outdir
  type: boolean
  inputBinding:
    prefix: -o
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- get_mirdeep2_precursors.pl

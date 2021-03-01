class: CommandLineTool
id: get_mirdeep2_precursors.pl.cwl
inputs:
- id: in_s
  doc: '[int]        output only precursors with min-score >= [int]'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_var_1
  doc: '[int]        output only precursors with score     <  [int]'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_output_dna_rna
  doc: output dna instead of rna
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_make_d_only
  doc: make simple id with the name only
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_getmature_instead_precursor
  doc: get_mature instead of precursor
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_getstar_instead_precursor
  doc: get_star instead of precursor
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_trackname_for_bedfiles
  doc: Trackname for bedfiles
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_outdir
  doc: outdir
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_mirdeep2_precursors.pl

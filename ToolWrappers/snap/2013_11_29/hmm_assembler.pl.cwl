class: CommandLineTool
id: hmm_assembler.pl.cwl
inputs:
- id: in_var_0
  doc: <order:length> [0:30]
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_d
  doc: <order:length> [0:9]
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_m
  doc: <order:length> [0:15]
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_s
  doc: <order:length> [0:9]
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_orderlength_include_utr_model_requires
  doc: <order:length> []  include 3'UTR model, requires -a
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_orderlength_include_polya_model_requires
  doc: <order:length> []  include PolyA model, requires -3
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_orderlength_include_moel_requires
  doc: <order:length> []  include 5'UTR moel, requires -p
  type: boolean?
  inputBinding:
    prefix: '-5'
- id: in_include_generic_promoter_model
  doc: include generic promoter model, requires -5
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_include_generic_repeat_model
  doc: include generic repeat model
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_include_reverse_model
  doc: include reverse ORF model
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_use_explicit_model
  doc: use explicit duration intron model
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_include_transsplicing_requires
  doc: include C.elegans trans-splicing, requires -p, -5
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_clade_sets_fly
  doc: <clade>            sets clade-specific values (worm, fly, plant)
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_single_gene_model
  doc: single gene model
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_include_splice_model
  doc: include GC-AG splice donor model
  type: string?
  inputBinding:
    prefix: -c
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
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_directory_of_files_from_forge
  doc: ''
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmm-assembler.pl

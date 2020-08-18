class: CommandLineTool
id: ../../../hmm_assembler.pl.cwl
inputs:
- id: var_0
  doc: <length>       [500]
  type: boolean
  inputBinding:
    prefix: -i
- id: e
  doc: <length>       [1000]
  type: boolean
  inputBinding:
    prefix: -e
- id: var_2
  doc: <order:length> [0:30]
  type: boolean
  inputBinding:
    prefix: -A
- id: d
  doc: <order:length> [0:9]
  type: boolean
  inputBinding:
    prefix: -D
- id: m
  doc: <order:length> [0:15]
  type: boolean
  inputBinding:
    prefix: -M
- id: s
  doc: <order:length> [0:9]
  type: boolean
  inputBinding:
    prefix: -S
- id: var_6
  doc: <order>        [4]
  type: boolean
  inputBinding:
    prefix: -C
- id: var_7
  doc: <order>        [4]
  type: boolean
  inputBinding:
    prefix: -I
- id: n
  doc: <order>        [4]
  type: boolean
  inputBinding:
    prefix: -N
- id: orderlength_include_model
  doc: <order:length> []  include 3'UTR model, requires -a
  type: boolean
  inputBinding:
    prefix: '-3'
- id: orderlength_include_requires
  doc: <order:length> []  include PolyA model, requires -3
  type: boolean
  inputBinding:
    prefix: -a
- id: orderlength_include_moel
  doc: <order:length> []  include 5'UTR moel, requires -p
  type: boolean
  inputBinding:
    prefix: '-5'
- id: include_generic_promoter_model
  doc: include generic promoter model, requires -5
  type: boolean
  inputBinding:
    prefix: -p
- id: include_generic_repeat_model
  doc: include generic repeat model
  type: boolean
  inputBinding:
    prefix: -r
- id: include_reverse_model
  doc: include reverse ORF model
  type: boolean
  inputBinding:
    prefix: -o
- id: use_duration_model
  doc: use explicit duration intron model
  type: boolean
  inputBinding:
    prefix: -x
- id: include_celegans_transsplicing
  doc: include C.elegans trans-splicing, requires -p, -5
  type: boolean
  inputBinding:
    prefix: -t
- id: clade_sets_fly
  doc: <clade>            sets clade-specific values (worm, fly, plant)
  type: boolean
  inputBinding:
    prefix: -Z
- id: single_gene_model
  doc: single gene model
  type: boolean
  inputBinding:
    prefix: '-1'
- id: include_gcag_model
  doc: include GC-AG splice donor model
  type: string
  inputBinding:
    prefix: -c
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
- hmm-assembler.pl

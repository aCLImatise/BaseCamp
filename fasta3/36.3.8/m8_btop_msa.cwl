class: CommandLineTool
id: ../../../m8_btop_msa.pl.cwl
inputs:
- id: help
  doc: description
  type: string
  inputBinding:
    prefix: --help
- id: ann_script
  doc: -- annotation script returning site/domain locations for subject sequences
    -- same as --script
  type: boolean
  inputBinding:
    prefix: --ann_script
- id: q_ann_script
  doc: -- annotation script for query sequences -- same as --q_script
  type: boolean
  inputBinding:
    prefix: --q_ann_script
- id: query_file
  doc: -- fasta query sequence -- same as --query, --query_lib (can contain multiple
    sequences for multi-sequence search)
  type: boolean
  inputBinding:
    prefix: --query_file
- id: out_fields
  doc: -- blast tabular fields shown before domain information
  type: boolean
  inputBinding:
    prefix: --out_fields
- id: raw_score
  doc: -- add the raw_score used to normalized domain scores to tabular output (raw_scores
    are only calculated for domains)
  type: boolean
  inputBinding:
    prefix: --raw_score
- id: an_not_blast_b_top_two
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- m8_btop_msa.pl

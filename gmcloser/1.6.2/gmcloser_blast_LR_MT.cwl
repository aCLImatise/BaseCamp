class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gmcloser_blast_LR_MT.pl.cwl
inputs:
- id: long_read
  doc: 'query sequence file is a fasta file of long reads (PacBio reads must be error-corrected)
    [default: false] (alignment was peformed with blast)'
  type: string
  inputBinding:
    prefix: --long_read
- id: lr_cov
  doc: 'fold coverage of long reads for target scaffolds [default: auto ; automatically
    calculated by dividing a total length of query by a total length of target]'
  type: string
  inputBinding:
    prefix: --lr_cov
- id: min_q_align
  doc: "minimum number of queries that are aligned to either 5'- or 3'-terminus of\
    \ a target subcontig [default: 1]"
  type: string
  inputBinding:
    prefix: --min_qalign
- id: iterate
  doc: 'number of iteration [default: 3]'
  type: string
  inputBinding:
    prefix: --iterate
- id: align_q
  doc: BLASTn alignment file for query against query [optional]
  type: string
  inputBinding:
    prefix: --alignq
- id: gm_closer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: verdot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: one_dot_five
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gmcloser-blast-LR-MT.pl

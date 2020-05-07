class: CommandLineTool
id: chira_quantify.py.cwl
inputs:
- id: b
  doc: ', --bed            Input BED file (default: None)'
  type: boolean
  inputBinding:
    prefix: -b
- id: m
  doc: ', --merged_bed     Input merged BED file (default: None)'
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: ', --outdir         Output file containing merged alignments (default: None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: cs
  doc: ', --crl_share     Minimum fraction of reads of a locus that must overlap with
    all CRL loci inorder to merge it into that CRL. (default: 0.7)'
  type: boolean
  inputBinding:
    prefix: -cs
- id: ls
  doc: ', --min_locus_size  Minimum number of reads a locus should have in order to
    participate in CRL creation.Always set this value relative to your sequencing
    depth. Setting this to lower leadsCRLs of random multimappings Also consider setting
    the --crl_share option along with this (default: 5)'
  type: boolean
  inputBinding:
    prefix: -ls
- id: e
  doc: ', --em_threshold   The maximum difference of transcripts expression between
    two consecutive iterations of EM algorithm to converge. (default: 1)'
  type: boolean
  inputBinding:
    prefix: -e
- id: create_crls_too
  doc: 'Create CRLs too (default: False)'
  type: boolean
  inputBinding:
    prefix: --create_crls_too
outputs: []
cwlVersion: v1.1
baseCommand:
- chira_quantify.py

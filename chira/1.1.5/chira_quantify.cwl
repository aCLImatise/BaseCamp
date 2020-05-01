#!/usr/bin/env cwl-runner

baseCommand:
- chira_quantify.py
class: CommandLineTool
cwlVersion: v1.0
id: chira_quantify.py
inputs:
- doc: ', --bed            Input BED file (default: None)'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ', --merged_bed     Input merged BED file (default: None)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ', --outdir         Output file containing merged alignments (default: None)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ', --crl_share     Minimum fraction of reads of a locus that must overlap with
    all CRL loci inorder to merge it into that CRL. (default: 0.7)'
  id: cs
  inputBinding:
    prefix: -cs
  type: boolean
- doc: ', --min_locus_size  Minimum number of reads a locus should have in order to
    participate in CRL creation.Always set this value relative to your sequencing
    depth. Setting this to lower leadsCRLs of random multimappings Also consider setting
    the --crl_share option along with this (default: 5)'
  id: ls
  inputBinding:
    prefix: -ls
  type: boolean
- doc: ', --em_threshold   The maximum difference of transcripts expression between
    two consecutive iterations of EM algorithm to converge. (default: 1)'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: 'Create CRLs too (default: False)'
  id: create_crls_too
  inputBinding:
    prefix: --create_crls_too
  type: boolean

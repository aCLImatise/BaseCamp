#!/usr/bin/env cwl-runner

baseCommand:
- chira_merge.py
class: CommandLineTool
cwlVersion: v1.0
id: chira_merge.py
inputs:
- doc: ', --bed            Input BED file with alignments (default: None)'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ', --outdir         Output directory path for the whole analysis (default:
    None)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ', --gtf            Annotation GTF file (default: None)'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ', --alignment_overlap  Minimum percentage overlap among BED entries inorder
    to merge. [0-1.0] (default: 0.7)'
  id: ao
  inputBinding:
    prefix: -ao
  type: boolean
- doc: ', --segment_overlap  Matching read positions with greater than this % overlap
    are merged into a segment (default: 0.7)'
  id: so
  inputBinding:
    prefix: -so
  type: boolean
- doc: ', --distance       Blockbuster parameter distance (default: 40)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ', --min_cluster_height  Blockbuster parameter minClusterHeight (default: 50)'
  id: mc
  inputBinding:
    prefix: -mc
  type: boolean
- doc: ', --min_block_height  Blockbuster parameter minBlockHeight (default: 1)'
  id: mb
  inputBinding:
    prefix: -mb
  type: boolean
- doc: ', --scale         Blockbuster parameter scale (default: 0.5)'
  id: sc
  inputBinding:
    prefix: -sc
  type: boolean

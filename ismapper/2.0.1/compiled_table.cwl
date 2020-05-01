#!/usr/bin/env cwl-runner

baseCommand:
- compiled_table.py
class: CommandLineTool
cwlVersion: v1.0
id: compiled_table.py
inputs:
- doc: tables to compile
  id: tables
  inputBinding:
    prefix: --tables
  type:
    items: string
    type: array
- doc: gbk file of reference
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: fasta file for insertion sequence query for compilation
  id: query
  inputBinding:
    prefix: --query
  type: string
- doc: distance between regions to call overlapping, default is 0
  id: gap
  inputBinding:
    prefix: --gap
  type: string
- doc: qualifier containing gene information (default product). Also note that all
    CDS features MUST have a locus_tag
  id: cds
  inputBinding:
    prefix: --cds
  type: string
- doc: qualifier containing gene information (default product). Also note that all
    tRNA features MUST have a locus_tag
  id: trna
  inputBinding:
    prefix: --trna
  type: string
- doc: qualifier containing gene information (default product). Also note that all
    rRNA features MUST have a locus_tag
  id: rrna
  inputBinding:
    prefix: --rrna
  type: string
- doc: Binary value for imprecise (*) hit (can be 1, 0 or 0.5), default is 1
  id: imprecise
  inputBinding:
    prefix: --imprecise
  type: string
- doc: Binary value for questionable (?) hit (can be 1, 0 or 0.5), default is 0
  id: unconfident
  inputBinding:
    prefix: --unconfident
  type: string
- doc: Prefix for output file
  id: out_prefix
  inputBinding:
    prefix: --out_prefix
  type: string

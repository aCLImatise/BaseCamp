#!/usr/bin/env cwl-runner

baseCommand:
- div_snp_table_chr.py
class: CommandLineTool
cwlVersion: v1.0
id: div_snp_table_chr.py
inputs:
- doc: ''
  id: feature_bed
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: ar_bed
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: snp_bed
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: div_directory
  inputBinding:
    position: 3
  type: string
- doc: Mask AR and features with this file
  id: mask
  inputBinding:
    prefix: --mask
  type: string
- doc: append suffix to chromosomes to get filenames from div_directory
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: Set chromosome ends using LEN file
  id: lens
  inputBinding:
    prefix: --lens
  type: string

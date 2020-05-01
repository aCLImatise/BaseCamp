#!/usr/bin/env cwl-runner

baseCommand:
- mamotif-integrate
class: CommandLineTool
cwlVersion: v1.0
id: mamotif-integrate
inputs:
- doc: 'MAnorm comparison peak file path (default: None)'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'motifscan result file path (default: None)'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: 'refgene file, default is none. (default: )'
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: 'Using negative test of this pk (default: False)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: 'correction type of pvalues, no correction or benjamin or bonferroni,default=benjamin
    (default: benjamin)'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: 'Output directory. (default: None)'
  id: o
  inputBinding:
    prefix: -o
  type: string

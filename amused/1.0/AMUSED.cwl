#!/usr/bin/env cwl-runner

baseCommand:
- AMUSED
class: CommandLineTool
cwlVersion: v1.0
id: amused
inputs:
- doc: = no inserting gaps
  id: ng
  inputBinding:
    prefix: -ng
  type: boolean
- doc: = no changing to upper case before scan (non ATGC bases are discarded)
  id: nu
  inputBinding:
    prefix: -nu
  type: boolean
- doc: = double stranded (reverse complement sequences too)
  id: ds
  inputBinding:
    prefix: -ds
  type: boolean
- doc: = don't sort
  id: ns
  inputBinding:
    prefix: -ns
  type: boolean
- doc: '= descriptive output: lots of intermediate values also output (but many columns)'
  id: do
  inputBinding:
    prefix: -do
  type: boolean
- doc: = add lines to output for base content
  id: bc
  inputBinding:
    prefix: -bc
  type: boolean
- doc: = don't calculate super Zs
  id: n_sz
  inputBinding:
    prefix: -nsz
  type: boolean

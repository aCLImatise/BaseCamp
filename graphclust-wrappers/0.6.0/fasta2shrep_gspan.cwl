#!/usr/bin/env cwl-runner

baseCommand:
- fasta2shrep_gspan.pl
class: CommandLineTool
cwlVersion: v1.0
id: fasta2shrep_gspan.pl
inputs:
- doc: '""'
  id: wins
  inputBinding:
    prefix: -wins
  type: boolean
- doc: 1 nt
  id: shift
  inputBinding:
    prefix: -shift
  type: boolean
- doc: '10'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '3'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '0 # selects all shreps'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: '"/var/tmp/fasta2shrep"'
  id: tmp
  inputBinding:
    prefix: -tmp
  type: boolean
- doc: '"CURRENT_DIR/GSPAN_Outputs/"'
  id: o
  inputBinding:
    prefix: -o
  type: boolean

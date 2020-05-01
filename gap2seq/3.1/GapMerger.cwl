#!/usr/bin/env cwl-runner

baseCommand:
- GapMerger
class: CommandLineTool
cwlVersion: v1.0
id: gapmerger
inputs:
- doc: '(1 arg) :    FASTA file of filled gaps'
  id: gaps
  inputBinding:
    prefix: -gaps
  type: boolean
- doc: '(1 arg) :    FASTA file of contigs'
  id: contigs
  inputBinding:
    prefix: -contigs
  type: boolean
- doc: '(1 arg) :    FASTA file of merged scaffolds'
  id: scaffolds
  inputBinding:
    prefix: -scaffolds
  type: boolean
- doc: "(1 arg) :    number of cores  [default '0']"
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: "(1 arg) :    verbosity level  [default '1']"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: '(0 arg) :    version'
  id: version
  inputBinding:
    prefix: -version
  type: boolean

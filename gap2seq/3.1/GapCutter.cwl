#!/usr/bin/env cwl-runner

baseCommand:
- GapCutter
class: CommandLineTool
cwlVersion: v1.0
id: gapcutter
inputs:
- doc: "(0 arg) :    Don't split flank sharing gaps"
  id: no_split
  inputBinding:
    prefix: -no-split
  type: boolean
- doc: '(0 arg) :    Mask sequences too short to use'
  id: mask
  inputBinding:
    prefix: -mask
  type: boolean
- doc: "(1 arg) :    k-mer length  [default '31']"
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: "(1 arg) :    Maximum number of nucleotides to ignore on gap fringes  [default\
    \ '10']"
  id: fuz
  inputBinding:
    prefix: -fuz
  type: boolean
- doc: '(1 arg) :    BED file for gaps'
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: '(1 arg) :    FASTA file of gaps'
  id: gaps
  inputBinding:
    prefix: -gaps
  type: boolean
- doc: '(1 arg) :    FASTA file of contigs'
  id: contigs
  inputBinding:
    prefix: -contigs
  type: boolean
- doc: '(1 arg) :    FASTA/Q file of scaffolds'
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

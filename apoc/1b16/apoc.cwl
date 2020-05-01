#!/usr/bin/env cwl-runner

baseCommand:
- apoc
class: CommandLineTool
cwlVersion: v1.0
id: apoc
inputs:
- doc: ''
  id: pdbfile1
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: pdbfile2
  inputBinding:
    position: 1
  type: string
- doc: Load a block of concatenated pdb files.
  id: block
  inputBinding:
    prefix: -block
  type: File
- doc: Minimal pocket volume in grid points. Default 100
  id: p_vol
  inputBinding:
    prefix: -pvol
  type: string
- doc: Minimal number of pocket residues. Default 10
  id: plen
  inputBinding:
    prefix: -plen
  type: string
- doc: Restrict to sequence-order-dependent alignment. Default no restriction.
  id: sod
  inputBinding:
    prefix: -sod
  type: boolean
- doc: 'Alignment printout: 0 - none, 1 - concise, 2 - detailed (default).'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: 'Similarity scoring metric:  tm (TM-score), ps (PS-score, default).'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Normalize the score with a fixed length specified by num.
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: Normalize the score by the average size of two structures.
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Normalize the score by the minimum size of two structures.
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: Normalize the score by the maximum size of two structures.
  id: c
  inputBinding:
    prefix: -c
  type: boolean

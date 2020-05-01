#!/usr/bin/env cwl-runner

baseCommand:
- mafFrag
class: CommandLineTool
cwlVersion: v1.0
id: maffrag
inputs:
- doc: ''
  id: database
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: maf_track
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: chrom
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: start
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: end
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: strand
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: out_maf
  inputBinding:
    position: 6
  type: string
- doc: Use XXX instead of database.chrom for the name
  id: out_name
  inputBinding:
    prefix: -outName
  type: string

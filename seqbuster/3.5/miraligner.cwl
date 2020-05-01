#!/usr/bin/env cwl-runner

baseCommand:
- miraligner
class: CommandLineTool
cwlVersion: v1.0
id: miraligner
inputs:
- doc: 'nt allowed for addition processes Default: 3'
  id: add
  inputBinding:
    prefix: -add
  type: boolean
- doc: database
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: 'add verbosity Default: false'
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: 'format input Default: none'
  id: format
  inputBinding:
    prefix: -format
  type: boolean
- doc: 'add freq information Default: true'
  id: freq
  inputBinding:
    prefix: -freq
  type: boolean
- doc: input
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: 'minimum size Default: 16'
  id: min_l
  inputBinding:
    prefix: -minl
  type: boolean
- doc: output
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: 'add reads mapping to precursor Default: false'
  id: pre
  inputBinding:
    prefix: -pre
  type: boolean
- doc: three letter code for species
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: 'nt allowed for substitution processes Default: 1'
  id: sub
  inputBinding:
    prefix: -sub
  type: boolean
- doc: 'nt allowed for trimming processes Default: 3'
  id: trim
  inputBinding:
    prefix: -trim
  type: boolean
- doc: 'version Default: false'
  id: v
  inputBinding:
    prefix: -v
  type: boolean

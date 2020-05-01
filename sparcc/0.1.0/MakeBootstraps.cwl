#!/usr/bin/env cwl-runner

baseCommand:
- MakeBootstraps.py
class: CommandLineTool
cwlVersion: v1.0
id: makebootstraps.py
inputs:
- doc: ''
  id: make
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: n
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: simulated
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: datasets
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: used
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: to
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: get
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: pseudo
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: p_values
  inputBinding:
    position: 8
  type: string
- doc: Number of simulated datasets to create (100 default).
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: "The template for the permuted data file names. Should not include the path,\
    \ which is specified using the -p option. The iteration number is indicated with\
    \ a \"#\". For example: 'permuted/counts.permuted_#.txt'If not provided a '.permuted_#.txt'\
    \ suffix will be added to the counts file name."
  id: template
  inputBinding:
    prefix: --template
  type: string
- doc: The path to which permuted data will be written. If not provided files will
    be written to the cwd.
  id: path
  inputBinding:
    prefix: --path
  type: string

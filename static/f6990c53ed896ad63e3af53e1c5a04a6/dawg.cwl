class: CommandLineTool
id: dawg.cwl
inputs:
- id: help_trick
  doc: display description of common control variables
  type: boolean
  inputBinding:
    prefix: --help-trick
- id: o
  doc: '[ --output ] arg          output to this file'
  type: boolean
  inputBinding:
    prefix: -o
- id: seed
  doc: (=0)              PRNG seed
  type: string
  inputBinding:
    prefix: --seed
- id: reps
  doc: (=0)              the number of alignments to generate
  type: string
  inputBinding:
    prefix: --reps
- id: split
  doc: '[=arg(=on)] (=null)  split output into separate files'
  type: boolean
  inputBinding:
    prefix: --split
- id: append
  doc: '[=arg(=on)] (=null) append output to file'
  type: boolean
  inputBinding:
    prefix: --append
- id: label
  doc: '[=arg(=on)] (=null)  label each simulation with a unique id'
  type: boolean
  inputBinding:
    prefix: --label
- id: arg_file
  doc: read arguments from file
  type: string
  inputBinding:
    prefix: --arg-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dawg

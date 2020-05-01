#!/usr/bin/env cwl-runner

baseCommand:
- novo2maq
class: CommandLineTool
cwlVersion: v1.0
id: novo2maq
inputs:
- doc: ''
  id: out_map
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_list
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: in_novo
  inputBinding:
    position: 2
  type: string
- doc: '|off Turns on or off the Smith-Waterman check of indels. When only indels
    that/n                          would be part of optimum local alignment are converted
    as MAQ indels. Default is off /n                          which will report all
    indels found by Novoalign.'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: Produces short report on number of alignments per reference sequence.
  id: r
  inputBinding:
    prefix: -r
  type: boolean

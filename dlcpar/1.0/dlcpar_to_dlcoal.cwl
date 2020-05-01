#!/usr/bin/env cwl-runner

baseCommand:
- dlcpar_to_dlcoal
class: CommandLineTool
cwlVersion: v1.0
id: dlcpar_to_dlcoal
inputs:
- doc: ''
  id: dlc_par_to_dl_coal
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: is
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: a
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: utility
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: for
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: converting
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: dlc_par
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: reconciliations
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: to
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: dl_coal
  inputBinding:
    position: 9
  type: string
- doc: species tree file in newick format
  id: stree
  inputBinding:
    prefix: --stree
  type: string
- doc: gene to species map
  id: s_map
  inputBinding:
    prefix: --smap
  type: string
- doc: 'input file extension (default: ".tree")'
  id: input_ext
  inputBinding:
    prefix: --inputext
  type: string
- doc: 'output file extension (default: "")'
  id: output_ext
  inputBinding:
    prefix: --outputext
  type: string

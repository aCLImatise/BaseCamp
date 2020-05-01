#!/usr/bin/env cwl-runner

baseCommand:
- dlcoal_to_dlcpar
class: CommandLineTool
cwlVersion: v1.0
id: dlcoal_to_dlcpar
inputs:
- doc: ''
  id: dl_coal_to_dlc_par
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
  id: dl_coal
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
  id: dlc_par
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
- doc: 'input file extension (default: ".coal.tree")'
  id: input_ext
  inputBinding:
    prefix: --inputext
  type: string
- doc: 'output file extension (default: ".dlcpar")'
  id: output_ext
  inputBinding:
    prefix: --outputext
  type: string
- doc: if set, use locus recon file rather than MPR
  id: use_locus_recon
  inputBinding:
    prefix: --use-locus-recon
  type: boolean
- doc: if set, disallow duplication between speciation and coalescence
  id: no_delay
  inputBinding:
    prefix: --no-delay
  type: boolean

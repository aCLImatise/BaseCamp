#!/usr/bin/env cwl-runner

baseCommand:
- abruijn-polish
class: CommandLineTool
cwlVersion: v1.0
id: abruijn-polish
inputs:
- doc: path to bubbles file
  id: bubbles_file
  inputBinding:
    position: 0
  type: string
- doc: path to substitution matrix
  id: subs_matrix
  inputBinding:
    position: 1
  type: string
- doc: path to homopolymer matrix
  id: hop_o_matrix
  inputBinding:
    position: 2
  type: string
- doc: path to output file
  id: out_file
  inputBinding:
    position: 3
  type: string
- doc: path to the file with verbose log [default = not set]
  id: v
  inputBinding:
    prefix: -v
  type: string
- doc: number of parallel threads [default = 1]
  id: t
  inputBinding:
    prefix: -t
  type: string

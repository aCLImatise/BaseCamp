#!/usr/bin/env cwl-runner

baseCommand:
- crisprtools
class: CommandLineTool
cwlVersion: v1.0
id: crisprtools
inputs:
- doc: combine multiple files
  id: merge
  inputBinding:
    position: 0
  type: string
- doc: display this message and exit
  id: help
  inputBinding:
    position: 1
  type: string
- doc: extract sequences in fasta
  id: extract
  inputBinding:
    position: 2
  type: string
- doc: make new files based on parameters
  id: filter
  inputBinding:
    position: 3
  type: string
- doc: change the IDs of elements
  id: sanitise
  inputBinding:
    position: 4
  type: string
- doc: show statistics on some or all CRISPRs
  id: stat
  inputBinding:
    position: 5
  type: string
- doc: remove a group from a .crispr file
  id: rm
  inputBinding:
    position: 6
  type: string

#!/usr/bin/env cwl-runner

baseCommand:
- nw_condense
class: CommandLineTool
cwlVersion: v1.0
id: nw_condense
inputs:
- doc: ': unicifies leaf labels by visiting the tree in Newick order and removing
    any leaf node whose label was already seen.'
  id: u
  inputBinding:
    prefix: -u
  type: boolean

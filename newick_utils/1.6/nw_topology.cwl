#!/usr/bin/env cwl-runner

baseCommand:
- nw_topology
class: CommandLineTool
cwlVersion: v1.0
id: nw_topology
inputs:
- doc: ': keep branch lengths'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ': discard inner node labels'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: ': discard leaf labels'
  id: l
  inputBinding:
    prefix: -L
  type: boolean

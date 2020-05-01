#!/usr/bin/env cwl-runner

baseCommand:
- nw_trim
class: CommandLineTool
cwlVersion: v1.0
id: nw_trim
inputs:
- doc: ': the maximum depth is expressed in number of ancestors, not distance. Nodes
    are not shortened, but no node is retained that has more ancestors than the maximum.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean

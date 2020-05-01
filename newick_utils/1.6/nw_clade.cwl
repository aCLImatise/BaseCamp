#!/usr/bin/env cwl-runner

baseCommand:
- nw_clade
class: CommandLineTool
cwlVersion: v1.0
id: nw_clade
inputs:
- doc: ': prints the siblings of the clade defined by the labels passed as arguments,
    in the order in which they appear in the Newick. If -m is also passed, only prints
    siblings if the labels passed as arguments form a monophyletic group.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean

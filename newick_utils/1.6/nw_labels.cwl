#!/usr/bin/env cwl-runner

baseCommand:
- nw_labels
class: CommandLineTool
cwlVersion: v1.0
id: nw_labels
inputs:
- doc: ": don't print labels of inner nodes"
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: ": don't print leaf labels"
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: ": print only the root's label"
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': TAB-separated - print on a single line, separated by tab stops.'
  id: t
  inputBinding:
    prefix: -t
  type: boolean

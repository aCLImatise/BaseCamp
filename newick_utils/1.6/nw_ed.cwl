#!/usr/bin/env cwl-runner

baseCommand:
- nw_ed
class: CommandLineTool
cwlVersion: v1.0
id: nw_ed
inputs:
- doc: (Subtree) print subtree rooted at matching node
  id: s
  inputBinding:
    position: 0
  type: string
- doc: (splice Out) splice out node, and attach children to parent,  preserving branch
    lengths. This is useful for "opening" poorly supported nodes.
  id: o
  inputBinding:
    position: 1
  type: string
- doc: Delete node
  id: d
  inputBinding:
    position: 2
  type: string
- doc: Print node's label
  id: l
  inputBinding:
    position: 3
  type: string
- doc: ': do not print the (possibly modified) tree at the end of the run  (modeled
    after sed -n)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: ': visit tree in preorder (starting at root, and visiting a node before any
    of its descendants). Default is post-order (ends at root and visits a node after
    all its descendats).'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': stop processing a clade after the first match - that is, if a node matches,
    its descendants are not processed. Note: this option will automatically set -r,
    as it makes no sense in post-order.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean

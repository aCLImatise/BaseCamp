#!/usr/bin/env cwl-runner

baseCommand:
- hallagram
class: CommandLineTool
cwlVersion: v1.0
id: hallagram
inputs:
- doc: table of pairwise similarity scores
  id: sim_table
  inputBinding:
    position: 0
  type: string
- doc: hypothesis tree (for getting feature order)
  id: tree
  inputBinding:
    position: 1
  type: string
- doc: HAllA associations
  id: associations
  inputBinding:
    position: 2
  type: string
- doc: isolate the N strongest associations
  id: strongest
  inputBinding:
    prefix: --strongest
  type: string
- doc: isolate the N largest associations
  id: largest
  inputBinding:
    prefix: --largest
  type: string
- doc: mask feature pairs not in associations
  id: mask
  inputBinding:
    prefix: --mask
  type: boolean
- doc: matplotlib color map
  id: cmap
  inputBinding:
    prefix: --cmap
  type: string
- doc: AXLABELS axis labels
  id: a_x_labels
  inputBinding:
    prefix: --axlabels
  type: string
- doc: output file name
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: Similarity metric has been used for similarity measurement
  id: similarity
  inputBinding:
    prefix: --similarity
  type: string
- doc: Order the significant association by similarity, pvalue, or qvalue
  id: order_by
  inputBinding:
    prefix: --orderby
  type: string

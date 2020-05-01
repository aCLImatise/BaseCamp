#!/usr/bin/env cwl-runner

baseCommand:
- iu-visualize-plot-dicts
class: CommandLineTool
cwlVersion: v1.0
id: iu-visualize-plot-dicts
inputs:
- doc: cPickle dictionary that contains quality score info ready for plotting
  id: plot_dict
  inputBinding:
    position: 0
  type: string
- doc: Figure destination
  id: dest
  inputBinding:
    prefix: --dest
  type: string
- doc: Title to appear at the top of the figure
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: When set, quality curves will be shown separately for each tile
  id: split_tiles
  inputBinding:
    prefix: --split-tiles
  type: boolean

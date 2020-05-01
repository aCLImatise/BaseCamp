#!/usr/bin/env cwl-runner

baseCommand:
- iu-visualize-qual-dicts
class: CommandLineTool
cwlVersion: v1.0
id: iu-visualize-qual-dicts
inputs:
- doc: cPickle dictionary that contains quality score info
  id: qual_dict
  inputBinding:
    position: 0
  type: string
- doc: PREFIX, --prefix FILE PREFIX Prefix for the output file(s)
  id: p
  inputBinding:
    prefix: -p
  type: File
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

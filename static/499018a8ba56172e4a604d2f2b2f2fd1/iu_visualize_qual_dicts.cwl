class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iu_visualize_qual_dicts.cwl
inputs:
- id: prefix__prefix
  doc: PREFIX, --prefix FILE PREFIX Prefix for the output file(s)
  type: File
  inputBinding:
    prefix: -p
- id: title
  doc: Title to appear at the top of the figure
  type: string
  inputBinding:
    prefix: --title
- id: split_tiles
  doc: When set, quality curves will be shown separately for each tile
  type: boolean
  inputBinding:
    prefix: --split-tiles
- id: qual_dict
  doc: cPickle dictionary that contains quality score info
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-visualize-qual-dicts

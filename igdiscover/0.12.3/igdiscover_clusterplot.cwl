class: CommandLineTool
id: igdiscover_clusterplot.cwl
inputs:
- id: table
  doc: Table with parsed and filtered IgBLAST results
  type: string
  inputBinding:
    position: 0
- id: directory
  doc: Save clustermaps as PNG into this directory
  type: Directory
  inputBinding:
    position: 1
- id: minimum_group_size
  doc: 'Do not plot if there are less than N sequences for a gene. Default: 200'
  type: string
  inputBinding:
    prefix: --minimum-group-size
- id: gene
  doc: 'Plot GENE. Can be given multiple times. Default: Plot all genes.'
  type: string
  inputBinding:
    prefix: --gene
- id: type
  doc: 'Gene type. Default: V'
  type: string
  inputBinding:
    prefix: --type
- id: size
  doc: 'Show at most N sequences (with a matrix of size N x N). Default: 300'
  type: string
  inputBinding:
    prefix: --size
- id: ignore_j
  doc: Include also rows without J assignment or J%SHM>0.
  type: boolean
  inputBinding:
    prefix: --ignore-J
- id: dpi
  doc: 'Resolution of output file. Default: 200'
  type: string
  inputBinding:
    prefix: --dpi
- id: no_title
  doc: Do not add a title to the plot
  type: boolean
  inputBinding:
    prefix: --no-title
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- clusterplot

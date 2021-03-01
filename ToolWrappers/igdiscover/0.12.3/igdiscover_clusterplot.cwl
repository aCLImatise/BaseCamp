class: CommandLineTool
id: igdiscover_clusterplot.cwl
inputs:
- id: in_minimum_group_size
  doc: "Do not plot if there are less than N sequences for a\ngene. Default: 200"
  type: long?
  inputBinding:
    prefix: --minimum-group-size
- id: in_gene
  doc: "Plot GENE. Can be given multiple times. Default: Plot\nall genes."
  type: string?
  inputBinding:
    prefix: --gene
- id: in_type
  doc: 'Gene type. Default: V'
  type: string?
  inputBinding:
    prefix: --type
- id: in_size
  doc: "Show at most N sequences (with a matrix of size N x\nN). Default: 300"
  type: long?
  inputBinding:
    prefix: --size
- id: in_ignore_j
  doc: Include also rows without J assignment or J%SHM>0.
  type: boolean?
  inputBinding:
    prefix: --ignore-J
- id: in_dpi
  doc: 'Resolution of output file. Default: 200'
  type: File?
  inputBinding:
    prefix: --dpi
- id: in_no_title
  doc: Do not add a title to the plot
  type: boolean?
  inputBinding:
    prefix: --no-title
- id: in_table
  doc: Table with parsed and filtered IgBLAST results
  type: string
  inputBinding:
    position: 0
- id: in_directory
  doc: Save clustermaps as PNG into this directory
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dpi
  doc: 'Resolution of output file. Default: 200'
  type: File?
  outputBinding:
    glob: $(inputs.in_dpi)
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- clusterplot

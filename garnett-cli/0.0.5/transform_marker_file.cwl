class: CommandLineTool
id: transform_marker_file.R.cwl
inputs:
- id: input_marker_file
  doc: Path to the SCXA-style marker gene file in .txt format
  type: string
  inputBinding:
    prefix: --input-marker-file
- id: marker_list
  doc: Path to a serialised object containing marker genes
  type: string
  inputBinding:
    prefix: --marker-list
- id: pval_col
  doc: Column name of marker p-values
  type: string
  inputBinding:
    prefix: --pval-col
- id: pval_threshold
  doc: Cut-off p-value for marker genes
  type: string
  inputBinding:
    prefix: --pval-threshold
- id: groups_col
  doc: Column name of cell groups (i.e. cluster IDs or cell types) in marker file
  type: string
  inputBinding:
    prefix: --groups-col
- id: gene_names
  doc: Column containing gene names in marker file
  type: string
  inputBinding:
    prefix: --gene-names
- id: garnett_marker_file
  doc: Path to the garnett format marker gene file in .txt format
  type: string
  inputBinding:
    prefix: --garnett-marker-file
outputs: []
cwlVersion: v1.1
baseCommand:
- transform_marker_file.R

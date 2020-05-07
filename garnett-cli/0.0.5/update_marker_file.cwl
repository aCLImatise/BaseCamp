class: CommandLineTool
id: update_marker_file.R.cwl
inputs:
- id: marker_list_obj
  doc: Path to the original marker gene list serialised object
  type: string
  inputBinding:
    prefix: --marker-list-obj
- id: marker_check_file
  doc: Path to the file with marker gene assessment done by garnett
  type: string
  inputBinding:
    prefix: --marker-check-file
- id: summary_col
  doc: Marker gene assessment column name
  type: string
  inputBinding:
    prefix: --summary-col
- id: cell_type_col
  doc: Marker gene assessment column name
  type: string
  inputBinding:
    prefix: --cell-type-col
- id: gene_id_col
  doc: Gene id column name in marker assessment file
  type: string
  inputBinding:
    prefix: --gene-id-col
- id: updated_marker_file
  doc: Path to the updated marker file
  type: string
  inputBinding:
    prefix: --updated-marker-file
outputs: []
cwlVersion: v1.1
baseCommand:
- update_marker_file.R

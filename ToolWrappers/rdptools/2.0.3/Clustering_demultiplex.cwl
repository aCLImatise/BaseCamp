class: CommandLineTool
id: Clustering_demultiplex.cwl
inputs:
- id: in_demultiplex
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_id_mapping
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_sample_mapping
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_result_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tab_index
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_output_directory
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Clustering
- demultiplex

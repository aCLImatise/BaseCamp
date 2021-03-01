class: CommandLineTool
id: merge_cutup_clustering.py.cwl
inputs:
- id: in_cut_up_clustering_result
  doc: Input cutup clustering result.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merge_cutup_clustering.py

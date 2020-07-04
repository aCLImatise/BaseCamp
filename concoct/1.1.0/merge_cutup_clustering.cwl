class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merge_cutup_clustering.py.cwl
inputs:
- id: cut_up_clustering_result
  doc: Input cutup clustering result.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_cutup_clustering.py

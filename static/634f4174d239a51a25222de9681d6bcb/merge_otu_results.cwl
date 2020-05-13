class: CommandLineTool
id: merge_otu_results.py.cwl
inputs:
- id: pick_otus_results
  doc: The result files from multiple runs of a pick otus script that need to be merged.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_otu_results.py

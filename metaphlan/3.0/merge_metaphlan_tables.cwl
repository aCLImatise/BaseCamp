class: CommandLineTool
id: merge_metaphlan_tables.py.cwl
inputs:
- id: o
  doc: Name of output file in which joined tables are saved
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_metaphlan_tables.py

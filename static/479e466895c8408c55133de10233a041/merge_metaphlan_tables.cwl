class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merge_metaphlan_tables.py.cwl
inputs:
- id: name_tables_saved
  doc: Name of output file in which joined tables are saved
  type: string
  inputBinding:
    prefix: -o
- id: input_dot_txt
  doc: One or more tab-delimited text tables to join
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_metaphlan_tables.py

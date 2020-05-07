class: CommandLineTool
id: print_metadata_stats.py.cwl
inputs:
- id: mapping_file
  doc: the input metadata file [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_file
- id: category
  doc: the category to examine [REQUIRED]
  type: string
  inputBinding:
    prefix: --category
outputs: []
cwlVersion: v1.1
baseCommand:
- print_metadata_stats.py

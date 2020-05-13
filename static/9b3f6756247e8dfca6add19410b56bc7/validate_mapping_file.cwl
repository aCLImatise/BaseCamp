class: CommandLineTool
id: validate_mapping_file.py.cwl
inputs:
- id: mapping_fp
  doc: Metadata mapping filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_mapping_file.py

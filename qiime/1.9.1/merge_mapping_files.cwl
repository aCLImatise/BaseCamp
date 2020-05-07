class: CommandLineTool
id: merge_mapping_files.py.cwl
inputs:
- id: mapping_fps
  doc: the input mapping files in a comma-separated list [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fps
- id: output_fp
  doc: the output mapping file to write [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_mapping_files.py

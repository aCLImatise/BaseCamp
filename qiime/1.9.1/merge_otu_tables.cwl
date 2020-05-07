class: CommandLineTool
id: merge_otu_tables.py.cwl
inputs:
- id: input_fps
  doc: the otu tables in biom format (comma-separated) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fps
- id: output_fp
  doc: the output otu table filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_otu_tables.py

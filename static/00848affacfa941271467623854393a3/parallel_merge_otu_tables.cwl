class: CommandLineTool
id: parallel_merge_otu_tables.py.cwl
inputs:
- id: input_fps
  doc: the otu tables in biom format (comma-separated) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fps
- id: output_dir
  doc: the output otu table directory path [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_merge_otu_tables.py

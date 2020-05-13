class: CommandLineTool
id: pick_rep_set.py.cwl
inputs:
- id: input_file
  doc: Path to input otu mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_file
outputs: []
cwlVersion: v1.1
baseCommand:
- pick_rep_set.py

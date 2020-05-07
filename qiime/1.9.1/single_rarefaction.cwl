class: CommandLineTool
id: single_rarefaction.py.cwl
inputs:
- id: input_path
  doc: Input OTU table filepath. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: Output OTU table filepath. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
- id: depth
  doc: Number of sequences to subsample per sample. [REQUIRED]
  type: string
  inputBinding:
    prefix: --depth
outputs: []
cwlVersion: v1.1
baseCommand:
- single_rarefaction.py

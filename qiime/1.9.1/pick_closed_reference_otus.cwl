class: CommandLineTool
id: pick_closed_reference_otus.py.cwl
inputs:
- id: input_fp
  doc: the input sequences [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- pick_closed_reference_otus.py

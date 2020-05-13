class: CommandLineTool
id: parallel_beta_diversity.py.cwl
inputs:
- id: input_path
  doc: input path, must be directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: output path, must be directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_beta_diversity.py

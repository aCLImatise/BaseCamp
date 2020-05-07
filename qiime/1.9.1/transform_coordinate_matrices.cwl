class: CommandLineTool
id: transform_coordinate_matrices.py.cwl
inputs:
- id: input_fps
  doc: comma-separated list of input coordinate matrices [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fps
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- transform_coordinate_matrices.py

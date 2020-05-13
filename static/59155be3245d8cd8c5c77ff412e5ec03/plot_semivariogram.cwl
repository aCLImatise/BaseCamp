class: CommandLineTool
id: plot_semivariogram.py.cwl
inputs:
- id: input_path_x
  doc: path to distance matrix to be displayed in the x axis [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path_x
- id: input_path_y
  doc: path to distance matrix to be displayed in the y axis [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path_y
- id: output_path
  doc: output path. directory for batch processing, filename for single file operation
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_semivariogram.py

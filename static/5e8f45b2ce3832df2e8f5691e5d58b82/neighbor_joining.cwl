class: CommandLineTool
id: neighbor_joining.py.cwl
inputs:
- id: input_path
  doc: input path.  directory for batch processing, filename for single file operation
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: output path. directory for batch processing, filename for single file operation
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- neighbor_joining.py

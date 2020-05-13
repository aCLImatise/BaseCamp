class: CommandLineTool
id: collate_alpha.py.cwl
inputs:
- id: input_path
  doc: input path (a directory) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: output path (a directory).  will be created if needed [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- collate_alpha.py

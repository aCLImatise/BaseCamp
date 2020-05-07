class: CommandLineTool
id: process_sff.py.cwl
inputs:
- id: input_dir
  doc: Input directory of sff files or a single sff filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- process_sff.py

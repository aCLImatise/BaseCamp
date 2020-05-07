class: CommandLineTool
id: pick_open_reference_otus.py.cwl
inputs:
- id: input_fps
  doc: the input sequences filepath or comma-separated list of filepaths [REQUIRED]
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
- pick_open_reference_otus.py

class: CommandLineTool
id: denoiser_preprocess.py.cwl
inputs:
- id: input_files
  doc: path to flowgram files (.sff.txt), comma separated [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_files
outputs: []
cwlVersion: v1.1
baseCommand:
- denoiser_preprocess.py

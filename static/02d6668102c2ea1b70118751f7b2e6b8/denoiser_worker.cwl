class: CommandLineTool
id: denoiser_worker.py.cwl
inputs:
- id: file_path
  doc: path used as prefix for worker data files[REQUIRED]
  type: File
  inputBinding:
    prefix: --file_path
- id: port
  doc: Server port [REQUIRED]
  type: string
  inputBinding:
    prefix: --port
- id: server_address
  doc: Server address[REQUIRED]
  type: string
  inputBinding:
    prefix: --server_address
outputs: []
cwlVersion: v1.1
baseCommand:
- denoiser_worker.py

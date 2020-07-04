class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cactus2hal.py_HAL_file_path.cwl
inputs:
- id: event
  doc: ''
  type: string
  inputBinding:
    prefix: --event
- id: cache_bytes
  doc: ''
  type: string
  inputBinding:
    prefix: --cacheBytes
- id: cactus_two_hal_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cactus2hal.py
- HAL_file_path

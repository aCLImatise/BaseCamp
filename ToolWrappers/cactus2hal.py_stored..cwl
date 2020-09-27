class: CommandLineTool
id: cactus2hal.py_stored..cwl
inputs:
- id: in_cache_bytes
  doc: ''
  type: string
  inputBinding:
    prefix: --cacheBytes
- id: in_event
  doc: ''
  type: string
  inputBinding:
    prefix: --event
- id: in_cactus_two_hal_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cactus2hal.py
- stored.

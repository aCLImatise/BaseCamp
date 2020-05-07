class: CommandLineTool
id: bwa_shm.cwl
inputs:
- id: d
  doc: destroy all indices in shared memory
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: list names of indices in shared memory
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: temporary file to reduce peak memory
  type: File
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- shm

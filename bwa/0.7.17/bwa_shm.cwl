class: CommandLineTool
id: ../../../bwa_shm.cwl
inputs:
- id: destroy_indices_shared
  doc: destroy all indices in shared memory
  type: boolean
  inputBinding:
    prefix: -d
- id: list_names_indices
  doc: list names of indices in shared memory
  type: boolean
  inputBinding:
    prefix: -l
- id: temporary_file_reduce
  doc: temporary file to reduce peak memory
  type: File
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- shm

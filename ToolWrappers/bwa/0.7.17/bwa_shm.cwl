class: CommandLineTool
id: bwa_shm.cwl
inputs:
- id: in_destroy_indices_shared
  doc: destroy all indices in shared memory
  type: boolean
  inputBinding:
    prefix: -d
- id: in_list_names_indices
  doc: list names of indices in shared memory
  type: boolean
  inputBinding:
    prefix: -l
- id: in_temporary_file_reduce
  doc: temporary file to reduce peak memory
  type: File
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bwa
- shm

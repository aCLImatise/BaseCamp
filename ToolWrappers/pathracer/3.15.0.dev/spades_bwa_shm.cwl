class: CommandLineTool
id: spades_bwa_shm.cwl
inputs:
- id: in_destroy_indices_shared
  doc: destroy all indices in shared memory
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_list_names_indices
  doc: list names of indices in shared memory
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_temporary_file_reduce
  doc: temporary file to reduce peak memory
  type: File?
  inputBinding:
    prefix: -f
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_shm
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0
cwlVersion: v1.1
baseCommand:
- spades-bwa
- shm

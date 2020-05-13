class: CommandLineTool
id: sentieon_bwa_shm.cwl
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
- id: t
  doc: number of threads
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- shm

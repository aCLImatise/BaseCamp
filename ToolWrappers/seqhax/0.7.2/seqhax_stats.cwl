class: CommandLineTool
id: seqhax_stats.cwl
inputs:
- id: in_number_parallel_jobs
  doc: Number of parallel jobs [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_parallel
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_jobs
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqhax
- stats

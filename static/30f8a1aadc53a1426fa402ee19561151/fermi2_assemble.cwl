class: CommandLineTool
id: fermi2_assemble.cwl
inputs:
- id: in_min_match
  doc: min match [0]
  type: long
  inputBinding:
    prefix: -l
- id: in_min_merge_length
  doc: min merge length [0]
  type: long
  inputBinding:
    prefix: -m
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_reads_dot_rld
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi2
- assemble

class: CommandLineTool
id: ../../../fermi_unitig.cwl
inputs:
- id: min_match
  doc: min match [0]
  type: long
  inputBinding:
    prefix: -l
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: rank_file
  doc: rank file [null]
  type: File
  inputBinding:
    prefix: -r
- id: reads_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- unitig

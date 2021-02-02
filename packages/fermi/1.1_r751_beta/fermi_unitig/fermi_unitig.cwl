class: CommandLineTool
id: fermi_unitig.cwl
inputs:
- id: in_min_match
  doc: min match [0]
  type: long
  inputBinding:
    prefix: -l
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_rank_file
  doc: rank file [null]
  type: File
  inputBinding:
    prefix: -r
- id: in_reads_dot_fmd
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
- fermi
- unitig

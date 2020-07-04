class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trimadap_mt.cwl
inputs:
- id: five
  doc: 5'-end adapter
  type: string
  inputBinding:
    prefix: '-5'
- id: three
  doc: 3'-end adapter
  type: string
  inputBinding:
    prefix: '-3'
- id: min_length
  doc: min length [0]
  type: long
  inputBinding:
    prefix: -l
- id: min_score
  doc: min score [15]
  type: long
  inputBinding:
    prefix: -s
- id: trim_down
  doc: trim down [don't trim]
  type: long
  inputBinding:
    prefix: -t
- id: max_difference
  doc: max difference [0.150]
  type: double
  inputBinding:
    prefix: -d
- id: number_trimmer_threads
  doc: number of trimmer threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: print_version_number
  doc: print version number
  type: boolean
  inputBinding:
    prefix: -v
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- trimadap-mt

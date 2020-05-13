class: CommandLineTool
id: spades_bwa_fastmap.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_map
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: l
  doc: min SMEM length to output [17]
  type: long
  inputBinding:
    prefix: -l
- id: w
  doc: max interval size to find coordiantes [20]
  type: long
  inputBinding:
    prefix: -w
- id: i
  doc: min SMEM interval size [1]
  type: long
  inputBinding:
    prefix: -i
- id: l
  doc: max MEM length [2147483647]
  type: long
  inputBinding:
    prefix: -L
- id: i
  doc: stop if MEM is longer than -l with a size less than INT [0]
  type: long
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- fastmap

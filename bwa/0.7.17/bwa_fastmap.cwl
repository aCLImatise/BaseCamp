class: CommandLineTool
id: ../../../bwa_fastmap.cwl
inputs:
- id: min_smem_length
  doc: min SMEM length to output [17]
  type: long
  inputBinding:
    prefix: -l
- id: max_interval_size
  doc: max interval size to find coordiantes [20]
  type: long
  inputBinding:
    prefix: -w
- id: min_smem_interval
  doc: min SMEM interval size [1]
  type: long
  inputBinding:
    prefix: -i
- id: max_mem_length
  doc: max MEM length [2147483647]
  type: long
  inputBinding:
    prefix: -L
- id: stop_mem_longer
  doc: stop if MEM is longer than -l with a size less than INT [0]
  type: long
  inputBinding:
    prefix: -I
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- fastmap

class: CommandLineTool
id: fermi_correct.cwl
inputs:
- id: reads_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_sfq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: k
  doc: k-mer length; -1 for auto [-1]
  type: long
  inputBinding:
    prefix: -k
- id: o
  doc: minimum (k+1)-mer occurrences [3]
  type: long
  inputBinding:
    prefix: -O
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: c
  doc: max fraction of corrected bases [0.30]
  type: double
  inputBinding:
    prefix: -C
- id: l
  doc: trim read down to INT bp; 0 to disable [0]
  type: long
  inputBinding:
    prefix: -l
- id: s
  doc: step size for the jumping heuristic; 0 to disable [5]
  type: long
  inputBinding:
    prefix: -s
- id: k
  doc: keep bad/unfixable reads
  type: boolean
  inputBinding:
    prefix: -K
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- correct

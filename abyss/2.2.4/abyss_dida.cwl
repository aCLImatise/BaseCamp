class: CommandLineTool
id: abyss_dida.cwl
inputs:
- id: d
  doc: additional command line opts for DIDA
  type: string
  inputBinding:
    prefix: -d
- id: j
  doc: number of threads [1]
  type: boolean
  inputBinding:
    prefix: -j
- id: m
  doc: path of 'mpirun' executable [mpirun]
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: number of ranks in DIDA MPI job [3]
  type: boolean
  inputBinding:
    prefix: -n
- id: x
  doc: =value  set environment variable for MPI job
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-dida

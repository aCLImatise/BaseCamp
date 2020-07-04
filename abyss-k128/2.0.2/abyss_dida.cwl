class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/abyss_dida.cwl
inputs:
- id: additional_command_line
  doc: additional command line opts for DIDA
  type: string
  inputBinding:
    prefix: -d
- id: number_of_threads
  doc: number of threads [1]
  type: boolean
  inputBinding:
    prefix: -j
- id: path_of_executable
  doc: path of 'mpirun' executable [mpirun]
  type: boolean
  inputBinding:
    prefix: -m
- id: number_ranks_dida
  doc: number of ranks in DIDA MPI job [3]
  type: boolean
  inputBinding:
    prefix: -n
- id: value_set_variable
  doc: =value  set environment variable for MPI job
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-dida

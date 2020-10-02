class: CommandLineTool
id: abyss_dida.cwl
inputs:
- id: in_additional_command_line
  doc: additional command line opts for DIDA
  type: string
  inputBinding:
    prefix: -d
- id: in_number_of_threads
  doc: number of threads [1]
  type: boolean
  inputBinding:
    prefix: -j
- id: in_path_of_executable
  doc: path of 'mpirun' executable [mpirun]
  type: boolean
  inputBinding:
    prefix: -m
- id: in_number_ranks_dida
  doc: number of ranks in DIDA MPI job [3]
  type: boolean
  inputBinding:
    prefix: -n
- id: in_value_set_variable
  doc: =value  set environment variable for MPI job
  type: string
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abyss-dida

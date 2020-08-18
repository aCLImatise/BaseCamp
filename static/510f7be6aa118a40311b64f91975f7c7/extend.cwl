class: CommandLineTool
id: ../../../extend.py.cwl
inputs:
- id: input_tpr
  doc: Input tpr
  type: string
  inputBinding:
    prefix: -s
- id: time
  doc: Extend simulation time, default=10
  type: string
  inputBinding:
    prefix: -time
- id: dt
  doc: integration time step, default=0.005
  type: string
  inputBinding:
    prefix: -dt
- id: nt
  doc: Total number of threads to start, default=0
  type: string
  inputBinding:
    prefix: -nt
- id: nt_mpi
  doc: Number of thread-MPI threads to start, default=0
  type: string
  inputBinding:
    prefix: -ntmpi
- id: gpu_id
  doc: List of GPU device id-s to use, default=""
  type: string
  inputBinding:
    prefix: -gpu_id
outputs: []
cwlVersion: v1.1
baseCommand:
- extend.py

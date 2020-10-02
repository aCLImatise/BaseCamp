class: CommandLineTool
id: extend.py.cwl
inputs:
- id: in_input_tpr
  doc: Input tpr
  type: string
  inputBinding:
    prefix: -s
- id: in_time
  doc: Extend simulation time, default=10
  type: long
  inputBinding:
    prefix: -time
- id: in_dt
  doc: integration time step, default=0.005
  type: double
  inputBinding:
    prefix: -dt
- id: in_nt
  doc: Total number of threads to start, default=0
  type: long
  inputBinding:
    prefix: -nt
- id: in_nt_mpi
  doc: Number of thread-MPI threads to start, default=0
  type: long
  inputBinding:
    prefix: -ntmpi
- id: in_gpu_id
  doc: List of GPU device id-s to use, default=""
  type: string
  inputBinding:
    prefix: -gpu_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extend.py

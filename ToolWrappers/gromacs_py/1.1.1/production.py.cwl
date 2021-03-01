class: CommandLineTool
id: production.py.cwl
inputs:
- id: in_input_pdb_file
  doc: Input PDB file
  type: File?
  inputBinding:
    prefix: -f
- id: in_topologie_gromacs_format
  doc: Topologie in gromacs format .top
  type: string?
  inputBinding:
    prefix: -p
- id: in_output_directory
  doc: Output Directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_output_file_name
  doc: Output file name
  type: File?
  inputBinding:
    prefix: -n
- id: in_time
  doc: Production time, default=10
  type: long?
  inputBinding:
    prefix: -time
- id: in_dt
  doc: Equilibration dt, default=0.005 (5 fs)
  type: double?
  inputBinding:
    prefix: -dt
- id: in_nt
  doc: Total number of threads to start, default=0
  type: long?
  inputBinding:
    prefix: -nt
- id: in_nt_mpi
  doc: Number of thread-MPI threads to start, default=0
  type: long?
  inputBinding:
    prefix: -ntmpi
- id: in_gpu_id
  doc: List of GPU device id-s to use, default=""
  type: string?
  inputBinding:
    prefix: -gpu_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output Directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_output_file_name
  doc: Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- production.py

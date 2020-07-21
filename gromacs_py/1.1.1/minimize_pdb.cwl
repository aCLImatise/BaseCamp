class: CommandLineTool
id: ../../../minimize_pdb.py.cwl
inputs:
- id: input_pdb_file
  doc: Input PDB file
  type: string
  inputBinding:
    prefix: -f
- id: topologie_gromacs_format
  doc: Topologie in gromacs format .top
  type: string
  inputBinding:
    prefix: -p
- id: output_directory
  doc: Output Directory
  type: string
  inputBinding:
    prefix: -o
- id: output_file_name
  doc: Output file name
  type: string
  inputBinding:
    prefix: -n
- id: m_steps
  doc: Minimisation nsteps, default=1000
  type: long
  inputBinding:
    prefix: -m_steps
- id: box
  doc: Create a box, default=False
  type: string
  inputBinding:
    prefix: -box
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
- minimize_pdb.py

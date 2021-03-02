class: CommandLineTool
id: top_em_equi_3_step_prod.py.cwl
inputs:
- id: in_input_pdb_file
  doc: Input PDB file
  type: File?
  inputBinding:
    prefix: -f
- id: in_output_directory
  doc: Output Directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_v_site
  doc: Use virtual site for hydrogens
  type: boolean?
  inputBinding:
    prefix: -vsite
- id: in_ion_concentration_mm
  doc: Ion concentration (mM), default = 0.15 (150mM)
  type: double?
  inputBinding:
    prefix: -C
- id: in_m_steps
  doc: Minimisation nsteps, default=1000
  type: long?
  inputBinding:
    prefix: -m_steps
- id: in_ha_time
  doc: Equilibration with HA constraint time(ns), default =
  type: string?
  inputBinding:
    prefix: -HA_time
- id: in_dt_ha
  doc: Equi HA dt, default=0.005 (5 fs)
  type: double?
  inputBinding:
    prefix: -dt_HA
- id: in_dt
  doc: Equi CA, CA_LOW, dt, default=0.005 (5 fs)
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
- id: in_zero_dot_two_five_ns
  doc: -CA_time CA_TIME      Equilibration with HA constraint time(ns), default =
  type: double
  inputBinding:
    position: 0
- id: in_one_ns
  doc: -CA_LOW_time CA_LOW_TIME
  type: long
  inputBinding:
    position: 1
- id: in_five_ns
  doc: -prod_time PROD_TIME  Production time, default=10
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output Directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gromacs_py:1.2.1--py_0
cwlVersion: v1.1
baseCommand:
- top_em_equi_3_step_prod.py

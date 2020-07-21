class: CommandLineTool
id: ../../../top_em_equi_3_step_prod.py.cwl
inputs:
- id: input_pdb_file
  doc: Input PDB file
  type: string
  inputBinding:
    prefix: -f
- id: output_directory
  doc: Output Directory
  type: string
  inputBinding:
    prefix: -o
- id: v_site
  doc: Use virtual site for hydrogens
  type: boolean
  inputBinding:
    prefix: -vsite
- id: concentration_mm_default
  doc: Ion concentration (mM), default = 0.15 (150mM)
  type: string
  inputBinding:
    prefix: -C
- id: m_steps
  doc: Minimisation nsteps, default=1000
  type: long
  inputBinding:
    prefix: -m_steps
- id: ha_time
  doc: Equilibration with HA constraint time(ns), default = 0.25ns
  type: string
  inputBinding:
    prefix: -HA_time
- id: ca_time
  doc: Equilibration with HA constraint time(ns), default = 1ns
  type: string
  inputBinding:
    prefix: -CA_time
- id: ca_low_time
  doc: Equilibration with HA constraint time(ns), default = 5ns
  type: string
  inputBinding:
    prefix: -CA_LOW_time
- id: prod_time
  doc: Production time, default=10
  type: string
  inputBinding:
    prefix: -prod_time
- id: dt_ha
  doc: Equi HA dt, default=0.005 (5 fs)
  type: string
  inputBinding:
    prefix: -dt_HA
- id: dt
  doc: Equi CA, CA_LOW, dt, default=0.005 (5 fs)
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
- top_em_equi_3_step_prod.py

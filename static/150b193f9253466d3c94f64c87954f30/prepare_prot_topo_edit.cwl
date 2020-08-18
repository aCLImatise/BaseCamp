class: CommandLineTool
id: ../../../prepare_prot_topo_edit.py.cwl
inputs:
- id: input_pdb_file
  doc: Input PDB file
  type: string
  inputBinding:
    prefix: -f
- id: input_topology_file
  doc: Input topology file
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
- id: no_v_site
  doc: Use virtual site for hydrogens
  type: boolean
  inputBinding:
    prefix: -no_vsite
- id: concentration_mm_default
  doc: Ion concentration (mM), default = 0.15 (150mM)
  type: string
  inputBinding:
    prefix: -C
- id: m_steps
  doc: Minimisation nsteps, default=10000
  type: long
  inputBinding:
    prefix: -m_steps
- id: ha_time
  doc: Equilibration with HA constraint time(ns), default = 2.5 ns
  type: string
  inputBinding:
    prefix: -HA_time
- id: ca_time
  doc: Equilibration with HA constraint time(ns), default = 5 ns
  type: string
  inputBinding:
    prefix: -CA_time
- id: ca_low_time
  doc: Equilibration with HA constraint time(ns), default = 10 ns
  type: string
  inputBinding:
    prefix: -CA_LOW_time
- id: max_warn
  doc: Total number of warnings allowed for the equilibration, default=0
  type: long
  inputBinding:
    prefix: -maxwarn
- id: dt_ha
  doc: Equi HA dt, default=0.002 (2 fs)
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
- prepare_prot_topo_edit.py

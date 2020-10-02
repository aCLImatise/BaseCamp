class: CommandLineTool
id: prepare_prot.py.cwl
inputs:
- id: in_input_pdb_file
  doc: Input PDB file
  type: File
  inputBinding:
    prefix: -f
- id: in_output_directory
  doc: Output Directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_output_file_name
  doc: Output file name
  type: File
  inputBinding:
    prefix: -n
- id: in_no_v_site
  doc: Use virtual site for hydrogens
  type: boolean
  inputBinding:
    prefix: -no_vsite
- id: in_ion_concentration_mm
  doc: Ion concentration (mM), default = 0.15 (150mM)
  type: double
  inputBinding:
    prefix: -C
- id: in_m_steps
  doc: Minimisation nsteps, default=10000
  type: long
  inputBinding:
    prefix: -m_steps
- id: in_ha_time
  doc: "Equilibration with HA constraint time(ns), default =\n2.5 ns"
  type: double
  inputBinding:
    prefix: -HA_time
- id: in_ca_time
  doc: Equilibration with HA constraint time(ns), default = 5
  type: long
  inputBinding:
    prefix: -CA_time
- id: in_dt_ha
  doc: Equi HA dt, default=0.002 (2 fs)
  type: double
  inputBinding:
    prefix: -dt_HA
- id: in_dt
  doc: Equi CA, CA_LOW, dt, default=0.005 (5 fs)
  type: double
  inputBinding:
    prefix: -dt
- id: in_max_warn
  doc: "Total number of warnings allowed for the\nequilibration, default=0"
  type: long
  inputBinding:
    prefix: -maxwarn
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
- id: in_ns
  doc: -CA_LOW_time CA_LOW_TIME
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output Directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_output_file_name
  doc: Output file name
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- prepare_prot.py

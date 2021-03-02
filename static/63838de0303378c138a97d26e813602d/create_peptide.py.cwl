class: CommandLineTool
id: create_peptide.py.cwl
inputs:
- id: in_seq
  doc: Peptide sequence
  type: string?
  inputBinding:
    prefix: -seq
- id: in_output_directory
  doc: Output Directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_m_steps
  doc: Minimisation nsteps, default=1000
  type: long?
  inputBinding:
    prefix: -m_steps
- id: in_time
  doc: Vacuum equilibration time(ns), default = 1ns
  type: long?
  inputBinding:
    prefix: -time
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
- create_peptide.py

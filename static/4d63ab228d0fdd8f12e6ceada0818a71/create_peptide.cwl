class: CommandLineTool
id: ../../../create_peptide.py.cwl
inputs:
- id: seq
  doc: Peptide sequence
  type: string
  inputBinding:
    prefix: -seq
- id: output_directory
  doc: Output Directory
  type: string
  inputBinding:
    prefix: -o
- id: m_steps
  doc: Minimisation nsteps, default=1000
  type: long
  inputBinding:
    prefix: -m_steps
- id: time
  doc: Vacuum equilibration time(ns), default = 1ns
  type: string
  inputBinding:
    prefix: -time
outputs: []
cwlVersion: v1.1
baseCommand:
- create_peptide.py

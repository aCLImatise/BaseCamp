class: CommandLineTool
id: write_strain_fasta.py_etaS_file.cwl
inputs:
- id: in_write_strain_fasta_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tau_star_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_et_as_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_out_base
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- write_strain_fasta.py
- etaS_file

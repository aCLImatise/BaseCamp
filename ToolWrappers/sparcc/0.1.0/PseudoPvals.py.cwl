class: CommandLineTool
id: PseudoPvals.py.cwl
inputs:
- id: in_type
  doc: "Type of p-values to computed.  oned-sided | two-sided\n(default)."
  type: string
  inputBinding:
    prefix: --type
- id: in_outfile
  doc: "Name of file to which p-values will be written.\n"
  type: File
  inputBinding:
    prefix: --outfile
- id: in_compute
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_real_cor_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_perm_template
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pseudo
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_num_simulations
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_p_vals
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_correlations
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_obtained
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_permuted
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_data_dot
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PseudoPvals.py

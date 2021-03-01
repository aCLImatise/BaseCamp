class: CommandLineTool
id: fclique.cwl
inputs:
- id: in_anc_file
  doc: properties Phylip ancestral states file (optional)
  type: boolean?
  inputBinding:
    prefix: -ancfile
- id: in_factor_file
  doc: properties Phylip multistate factors file (optional)
  type: boolean?
  inputBinding:
    prefix: -factorfile
- id: in_weights
  doc: properties Phylip weights file (optional)
  type: boolean?
  inputBinding:
    prefix: -weights
- id: in_cli_qm_in
  doc: integer    [0] Minimum clique size (Integer 0 or more)
  type: boolean?
  inputBinding:
    prefix: -cliqmin
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -outgrno
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_print_comp
  doc: boolean    [N] Print out compatibility matrix
  type: boolean?
  inputBinding:
    prefix: -printcomp
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fclique

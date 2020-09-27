class: CommandLineTool
id: HR2.exe.cwl
inputs:
- id: in_display_version_information
  doc: Display version information.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_set_tolerance_mmu
  doc: Set tolerance to 'tol' mmu (default 5).
  type: long
  inputBinding:
    prefix: -t
- id: in_set_mass_to
  doc: Set mass to 'mz'.
  type: string
  inputBinding:
    prefix: -m
- id: in_print_only_results
  doc: Print only the results (dle)-c      Number of charges i.e -c 1 is equivalent
    to -p (dle).
  type: boolean
  inputBinding:
    prefix: -s
- id: in_positive_ions_electron
  doc: Positive ions; electron mass is removed from the formula.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_negative_ions_electron
  doc: Negative ions; electron mass is added to the formula.
  type: boolean
  inputBinding:
    prefix: -n
- id: in_apply_rules_dle
  doc: Does not apply 4-7 golden rules (dle).
  type: boolean
  inputBinding:
    prefix: -g
- id: in_maximum_num_dle
  doc: Maximum num. of adducts.  (dle)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_element_x_use
  doc: "For element X, use atom range a to b. List of valid atoms:\nX    key   mass\
    \ (6 decimals shown)"
  type: long
  inputBinding:
    prefix: -X
- id: in_in
  doc: "-M       15.000109\nO     -O       15.994915\nF     -F       18.998403"
  type: string
  inputBinding:
    position: 0
- id: in_si
  doc: "-I       27.976927\nP     -P       30.973762\nS     -S       31.972071"
  type: string
  inputBinding:
    position: 1
- id: in_ibr
  doc: "-G       80.916291\nK     -K       38.963707"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HR2.exe

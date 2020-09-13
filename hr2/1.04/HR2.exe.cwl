class: CommandLineTool
id: ../../../HR2.exe.cwl
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
- id: in_ic
  doc: "-1       13.003355\nH     -H        1.007825"
  type: string
  inputBinding:
    position: 0
- id: in_ih
  doc: "-D        2.014102\nN     -N       14.003074"
  type: string
  inputBinding:
    position: 1
- id: in_in
  doc: "-M       15.000109\nO     -O       15.994915\nF     -F       18.998403"
  type: string
  inputBinding:
    position: 2
- id: in_na
  doc: -A       22.989769
  type: string
  inputBinding:
    position: 3
- id: in_si
  doc: "-I       27.976927\nP     -P       30.973762\nS     -S       31.972071"
  type: string
  inputBinding:
    position: 4
- id: in_cl
  doc: -L       34.968853
  type: string
  inputBinding:
    position: 5
- id: in_icl
  doc: -E       36.965903
  type: string
  inputBinding:
    position: 6
- id: in_br
  doc: -B       78.918337
  type: string
  inputBinding:
    position: 7
- id: in_ibr
  doc: "-G       80.916291\nK     -K       38.963707"
  type: string
  inputBinding:
    position: 8
- id: in_ik
  doc: -J       40.961826
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HR2.exe

class: CommandLineTool
id: rename.cwl
inputs:
- id: in_man
  doc: (read the full manual)
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_null
  doc: (when reading from STDIN)
  type: boolean?
  inputBinding:
    prefix: --null
- id: in_interactive
  doc: (proceed or prompt when overwriting)
  type: string?
  inputBinding:
    prefix: --interactive
- id: in_glob
  doc: (expand "*" etc. in filenames, useful in Windows\x{2122} CMD.EXE)
  type: boolean?
  inputBinding:
    prefix: --glob
- id: in_lower_case
  doc: to
  type: string?
  inputBinding:
    prefix: --lower-case
- id: in_subst_all
  doc: to
  type: string?
  inputBinding:
    prefix: --subst-all
- id: in_remove_extension
  doc: (see manual)
  type: boolean?
  inputBinding:
    prefix: --remove-extension
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_var_8
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_var_9
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_stdin
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --stdin
- id: in_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_var_12
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_var_13
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_m
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_l
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_k
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_switches
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_transforms
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_switches_vertical_line_transforms
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rename

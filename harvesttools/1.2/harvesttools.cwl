class: CommandLineTool
id: ../../../harvesttools.cwl
inputs:
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in__filter_name
  doc: ',<filter name>,"<description>"'
  type: string
  inputBinding:
    prefix: -b
- id: in_var_2
  doc: ''
  type: string
  inputBinding:
    prefix: -B
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -F
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_var_7
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_multifasta_alignment_output
  doc: <multi-fasta alignment output (concatenated LCBs)>
  type: boolean
  inputBinding:
    prefix: -M
- id: in_var_9
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_var_10
  doc: ''
  type: string
  inputBinding:
    prefix: -N
- id: in_midpoint_re_root
  doc: (reroot the tree at its midpoint after loading)
  type: boolean
  inputBinding:
    prefix: --midpoint-reroot
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: in_update_branch_values
  doc: (update the branch values to reflect genome length)
  type: long
  inputBinding:
    prefix: -u
- id: in_var_15
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_var_16
  doc: ''
  type: string
  inputBinding:
    prefix: -V
- id: in_var_17
  doc: ''
  type: File
  inputBinding:
    prefix: -x
- id: in_var_18
  doc: ''
  type: File
  inputBinding:
    prefix: -X
- id: in_quiet_mode
  doc: (quiet mode)
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_var_18
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_var_18)
cwlVersion: v1.1
baseCommand:
- harvesttools

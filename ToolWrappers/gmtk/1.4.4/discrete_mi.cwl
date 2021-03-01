class: CommandLineTool
id: discrete_mi.cwl
inputs:
- id: in_input_pfile
  doc: input pfile
  type: File?
  inputBinding:
    prefix: -i
- id: in_ni_one
  doc: for file 1
  type: long?
  inputBinding:
    prefix: -ni1
- id: in_nf_one
  doc: for file 1
  type: long?
  inputBinding:
    prefix: -nf1
- id: in_iron_e
  doc: for file 1
  type: long?
  inputBinding:
    prefix: -ir1
- id: in_fr_one
  doc: for file 1
  type: double?
  inputBinding:
    prefix: -fr1
- id: in_fmt_one
  doc: <format(htk,bin,asc,pfile)> for file 1
  type: boolean?
  inputBinding:
    prefix: -fmt1
- id: in_ir_two
  doc: for file 2
  type: long?
  inputBinding:
    prefix: -ir2
- id: in_fr_two
  doc: for file 2
  type: double?
  inputBinding:
    prefix: -fr2
- id: in_fmt_two
  doc: <format(htk,bin,asc,pfile)> for file 2
  type: boolean?
  inputBinding:
    prefix: -fmt2
- id: in_i_swap_one
  doc: byte-swap input file 1
  type: boolean?
  inputBinding:
    prefix: -iswap1
- id: in_i_swap_two
  doc: byte-swap input file 2
  type: boolean?
  inputBinding:
    prefix: -iswap2
- id: in_l_swap
  doc: byte-swap label file
  type: boolean?
  inputBinding:
    prefix: -lswap
- id: in_lab_fmt
  doc: <format(htk,bin,asc,pfile)> for the label file
  type: boolean?
  inputBinding:
    prefix: -labfmt
- id: in_print_binary_ints
  doc: print raw binary data (ints and floats)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_ns
  doc: "Don't print the frame IDs (i.e., sent and frame #)"
  type: boolean?
  inputBinding:
    prefix: -ns
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- discrete-mi

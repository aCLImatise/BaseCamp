class: CommandLineTool
id: scheck.cwl
inputs:
- id: in_assume_khs_reversed
  doc: ': Assume KHS is reversed -- as in Infernal output'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_print_output_format
  doc: ': print ct output format for predicted structure'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_s_test
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scheck

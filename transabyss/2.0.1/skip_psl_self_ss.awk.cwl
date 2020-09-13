class: CommandLineTool
id: ../../../skip_psl_self_ss.awk.cwl
inputs:
- id: in_val_set_variable
  doc: =VAL      Set variable
  type: string
  inputBinding:
    prefix: -v
- id: in_use_sep_field
  doc: Use SEP as field separator
  type: string
  inputBinding:
    prefix: -F
- id: in_read_program_file
  doc: Read program from FILE
  type: File
  inputBinding:
    prefix: -f
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_awk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_awk_program
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- skip_psl_self_ss.awk

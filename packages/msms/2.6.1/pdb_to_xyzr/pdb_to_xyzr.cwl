class: CommandLineTool
id: pdb_to_xyzr.cwl
inputs:
- id: in_val_set_sep
  doc: "=VAL      Set variable\n-F SEP          Use SEP as field separator\n-f FILE\
    \         Read program from FILE\n-e AWK_PROGRAM\n"
  type: File
  inputBinding:
    prefix: -v
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
- pdb_to_xyzr

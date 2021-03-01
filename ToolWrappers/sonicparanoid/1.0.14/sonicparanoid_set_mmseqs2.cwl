class: CommandLineTool
id: sonicparanoid_set_mmseqs2.cwl
inputs:
- id: in_mm_seqs_path
  doc: The path to the MMseqs2 binary file.
  type: File?
  inputBinding:
    prefix: --mmseqs-path
- id: in_debug
  doc: Output debug information.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sonicparanoid-set-mmseqs2

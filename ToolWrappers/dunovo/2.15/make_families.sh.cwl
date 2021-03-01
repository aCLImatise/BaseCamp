class: CommandLineTool
id: make_families.sh.cwl
inputs:
- id: in_length_barcode_portion
  doc: ': The length of the barcode portion of each read. Default: 12'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_length_invariant_ligation
  doc: ': The length of the invariant (ligation) portion of each read. Default: 5'
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- make-families.sh

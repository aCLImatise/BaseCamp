class: CommandLineTool
id: faToTab.cwl
inputs:
- id: in_type
  doc: sequence type, dna or protein, default is dna
  type: string?
  inputBinding:
    prefix: -type
- id: in_keep_acc_suffix
  doc: "- don't strip dot version off of sequence id, keep as is"
  type: boolean?
  inputBinding:
    prefix: -keepAccSuffix
- id: in_in_filename
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
- faToTab

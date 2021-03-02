class: CommandLineTool
id: faTrans.cwl
inputs:
- id: in_stop
  doc: at first stop codon (otherwise puts in Z for stop codons)
  type: string?
  inputBinding:
    prefix: -stop
- id: in_offset
  doc: start at a particular offset.
  type: string?
  inputBinding:
    prefix: -offset
- id: in_cds_upper
  doc: '- cds is in upper case'
  type: boolean?
  inputBinding:
    prefix: -cdsUpper
- id: in_in_dot_fa
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
- faTrans

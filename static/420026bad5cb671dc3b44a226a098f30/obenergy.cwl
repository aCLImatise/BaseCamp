class: CommandLineTool
id: obenergy.cwl
inputs:
- id: in_verbose_print_indivual
  doc: 'verbose: print out indivual energy interactions'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_ff
  doc: "select a forcefield\navailable forcefields:"
  type: string?
  inputBinding:
    prefix: -ff
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obenergy

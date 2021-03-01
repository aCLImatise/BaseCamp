class: CommandLineTool
id: unitas.pl.cwl
inputs:
- id: in_species
  doc: 'this:'
  type: string?
  inputBinding:
    prefix: -species
- id: in_refseq
  doc: '[-refseq sequence_2.fas ...]'
  type: long?
  inputBinding:
    prefix: -refseq
- id: in_xxxx_x_dot
  doc: ".oXXXXoo..                 ...oXXXXXXXXXXXXXXXXXX\nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXo'''\n\
    XXXXXXXXXXXXXXX------------------XXXXXXXXXXXX'"
  type: string
  inputBinding:
    position: 0
- id: in_options_dot
  doc: '### How to cite unitas ###'
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
- unitas.pl

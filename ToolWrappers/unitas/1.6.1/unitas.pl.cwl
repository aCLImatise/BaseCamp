class: CommandLineTool
id: unitas.pl.cwl
inputs:
- id: in_species
  doc: "this:\n-species x"
  type: string
  inputBinding:
    prefix: -species
- id: in_refseq
  doc: '[-refseq sequence_2.fas ...]'
  type: long
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
- id: in_www_dot_small_rna_group_dot_uni_mainz_dot_de
  doc: 'You can find a more detailed documentation here:'
  type: string
  inputBinding:
    position: 0
- id: in_www_dot_small_rna_group_dot_uni_mainz_dot_de_slash_software_slash_unit_as_documentation_one_dot_six_dot_one_dot_pdf
  doc: '### Twitter ###'
  type: double
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- unitas.pl

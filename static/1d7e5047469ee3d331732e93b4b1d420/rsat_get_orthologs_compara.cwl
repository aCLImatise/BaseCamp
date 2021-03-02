class: CommandLineTool
id: rsat_get_orthologs_compara.cwl
inputs:
- id: in_ref_org
  doc: \
  type: string?
  inputBinding:
    prefix: -ref_org
- id: in_get_orthologs_compara
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_ignored_dot
  doc: As for genes, the reference organisms can also be entered on the command
  type: string
  inputBinding:
    position: 0
- id: in_organisms_dot
  doc: get-orthologs-compara -v 1 -supported_organisms \
  type: string
  inputBinding:
    position: 0
- id: in_one_two_one_dot
  doc: Note that in Compara polyploids such as wheat are separated by
  type: long
  inputBinding:
    position: 0
- id: in_mdefinitionm_term_homoeologous
  doc: "\e[33mDefinition\e[0m: the term homoeologous, also spelled homeologous, is"
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- get-orthologs-compara

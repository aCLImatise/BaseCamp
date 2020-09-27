class: CommandLineTool
id: ribo_swap.cwl
inputs:
- id: in_output
  doc: 'output directory; default: /'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  inputBinding:
    prefix: --verbosity
- id: in_de_novo_file
  doc: multifasta containing de novo contigs
  type: string
  inputBinding:
    position: 0
- id: in_de_fere_novo_file
  doc: multifasta containing de fere novo contigs
  type: string
  inputBinding:
    position: 1
- id: in_bad_contig
  doc: name of the bad contig
  type: string
  inputBinding:
    position: 2
- id: in_good_contigs
  doc: colon separated good contigs for replacement
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output directory; default: /'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  outputBinding:
    glob: $(inputs.in_verbosity)
cwlVersion: v1.1
baseCommand:
- ribo
- swap

class: CommandLineTool
id: pyfasta.cwl
inputs:
- id: in_valid_actionavailable_actionsextract
  doc: "a valid action\navailable actions:\n`extract`: extract sequences from a fasta\
    \ file\n`info`: show info about the fasta file and exit.\n`split`: split a large\
    \ fasta file into separate files\nand/or into K-mers.\n`flatten`: flatten a fasta\
    \ file inplace so that later\ncommand-line (and programmattic) access via\npyfasta\
    \ will use the inplace flattened version\nrather than creating another .flat copy\
    \ of the\nsequence.\nto view the help for a particular action, use:\npyfasta [action]\
    \ --help\ne.g.:\npyfasta extract --help\n"
  type: File?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyfasta

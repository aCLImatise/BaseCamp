class: CommandLineTool
id: ../../../BuildDatabase.cwl
inputs:
- id: in_dir
  doc: "<dir containing fasta files *.fa, *.fasta,\n*.fast, *.FA, *.FASTA, *.FAST,\
    \ *.dna,\nand  *.DNA >"
  type: boolean
  inputBinding:
    prefix: -dir
- id: in_batch
  doc: ''
  type: File
  inputBinding:
    prefix: -batch
- id: in_name
  doc: The name of the database to create.
  type: string
  inputBinding:
    prefix: -name
- id: in_engine
  doc: "The name of the search engine we are using. I.e abblast/wublast or\nrmblast."
  type: string
  inputBinding:
    prefix: -engine
- id: in_line_dot
  doc: '- Providing the name of a directory containing FASTA files '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- BuildDatabase

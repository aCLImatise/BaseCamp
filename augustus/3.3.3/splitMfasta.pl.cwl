class: CommandLineTool
id: ../../../splitMfasta.pl.cwl
inputs:
- id: in_minsize
  doc: "each split output fasta file total to at least this man base pairs.\nset this\
    \ to 0 to split the input in single sequence files."
  type: File
  inputBinding:
    prefix: --minsize
- id: in_output_path
  doc: ''
  type: long[]
  inputBinding:
    prefix: --outputpath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splitMfasta.pl

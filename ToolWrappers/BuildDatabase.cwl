class: CommandLineTool
id: BuildDatabase.cwl
inputs:
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
- id: in_dir
  doc: "The name of a directory containing fasta files to be processed. The\nfiles\
    \ are recognized by their suffix. Only *.fa and *.fasta files\nare processed."
  type: Directory
  inputBinding:
    prefix: -dir
- id: in_batch
  doc: "The name of a file which contains the names of fasta files to\nprocess. The\
    \ files names are listed one per line and should be fully\nqualified."
  type: File
  inputBinding:
    prefix: -batch
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

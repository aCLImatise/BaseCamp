class: CommandLineTool
id: prerapsearch.cwl
inputs:
- id: in_splits_database_specified
  doc: (splits the database into specified number of files)
  type: long
  inputBinding:
    prefix: -s
- id: in_output_full_fasta
  doc: (output the full fasta headers of subjects to faicilitate anonotation)
  type: string
  inputBinding:
    prefix: -f
- id: in_n
  doc: ''
  type: File
  inputBinding:
    prefix: -n
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prerapsearch

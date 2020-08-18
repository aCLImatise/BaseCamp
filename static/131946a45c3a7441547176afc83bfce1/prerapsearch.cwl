class: CommandLineTool
id: ../../../prerapsearch.cwl
inputs:
- id: splits_database_specified
  doc: (splits the database into specified number of files)
  type: string
  inputBinding:
    prefix: -s
- id: output_full_headers
  doc: (output the full fasta headers of subjects to faicilitate anonotation)
  type: string
  inputBinding:
    prefix: -f
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- prerapsearch

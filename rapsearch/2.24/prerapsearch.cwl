class: CommandLineTool
id: prerapsearch.cwl
inputs:
- id: s
  doc: (splits the database into specified number of files)
  type: string
  inputBinding:
    prefix: -s
- id: f
  doc: /t (output the full fasta headers of subjects to faicilitate anonotation)
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- prerapsearch

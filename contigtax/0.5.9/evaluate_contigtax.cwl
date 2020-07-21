class: CommandLineTool
id: ../../../evaluate_contigtax.py.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: dbname
  doc: ''
  type: string
  inputBinding:
    prefix: --dbname
- id: in_file
  doc: contigtax assignment file with taxids (use --taxidout with contigtax assign)
  type: string
  inputBinding:
    position: 0
- id: tax_file
  doc: File mapping sequence id to true taxonomy id
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- evaluate_contigtax.py

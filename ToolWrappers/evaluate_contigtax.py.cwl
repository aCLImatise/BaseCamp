class: CommandLineTool
id: evaluate_contigtax.py.cwl
inputs:
- id: in_dbname
  doc: ''
  type: string
  inputBinding:
    prefix: --dbname
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_in_file
  doc: "contigtax assignment file with taxids (use --taxidout\nwith contigtax assign)"
  type: string
  inputBinding:
    position: 0
- id: in_tax_file
  doc: File mapping sequence id to true taxonomy id
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- evaluate_contigtax.py

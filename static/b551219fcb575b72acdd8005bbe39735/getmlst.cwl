class: CommandLineTool
id: getmlst.py.cwl
inputs:
- id: repository_url
  doc: URL for MLST repository XML index
  type: string
  inputBinding:
    prefix: --repository_url
- id: species
  doc: The name of the species that you want to download (e.g. "Escherichia coli")
  type: string
  inputBinding:
    prefix: --species
- id: force_scheme_name
  doc: Flage to force downloading of specific scheme name (e.g. "Clostridium difficile")
  type: boolean
  inputBinding:
    prefix: --force_scheme_name
outputs: []
cwlVersion: v1.1
baseCommand:
- getmlst.py

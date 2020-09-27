class: CommandLineTool
id: getmlst.py.cwl
inputs:
- id: in_repository_url
  doc: URL for MLST repository XML index
  type: string
  inputBinding:
    prefix: --repository_url
- id: in_species
  doc: "The name of the species that you want to download\n(e.g. \"Escherichia coli\"\
    )"
  type: string
  inputBinding:
    prefix: --species
- id: in_force_scheme_name
  doc: "Flage to force downloading of specific scheme name\n(e.g. \"Clostridium difficile\"\
    )\n"
  type: boolean
  inputBinding:
    prefix: --force_scheme_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getmlst.py

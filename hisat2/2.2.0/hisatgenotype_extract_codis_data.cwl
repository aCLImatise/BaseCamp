class: CommandLineTool
id: hisatgenotype_extract_codis_data.py.cwl
inputs:
- id: base
  doc: 'base filename (default: codis)'
  type: string
  inputBinding:
    prefix: --base
- id: locus_list
  doc: 'base filename (default: empty)'
  type: string
  inputBinding:
    prefix: --locus-list
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_extract_codis_data.py

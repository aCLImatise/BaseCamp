class: CommandLineTool
id: hisatgenotype_extract_codis_data.py.cwl
inputs:
- id: in_base
  doc: 'base filename (default: codis)'
  type: File
  inputBinding:
    prefix: --base
- id: in_locus_list
  doc: 'base filename (default: empty)'
  type: File
  inputBinding:
    prefix: --locus-list
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisatgenotype_extract_codis_data.py

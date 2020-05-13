class: CommandLineTool
id: nullarbor_json.pl.cwl
inputs:
- id: in_dir
  doc: Nullarbor result folder
  type: boolean
  inputBinding:
    prefix: --indir
- id: quiet
  doc: No output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: More output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- nullarbor-json.pl

class: CommandLineTool
id: nullarbor_json.pl.cwl
inputs:
- id: in_in_dir
  doc: Nullarbor result folder
  type: boolean
  inputBinding:
    prefix: --indir
- id: in_quiet
  doc: No output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: More output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nullarbor-json.pl

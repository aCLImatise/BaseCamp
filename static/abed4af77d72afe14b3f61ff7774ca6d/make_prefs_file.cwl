class: CommandLineTool
id: make_prefs_file.py.cwl
inputs:
- id: map_fname
  doc: This is the metadata mapping file [default=none] [REQUIRED]
  type: string
  inputBinding:
    prefix: --map_fname
- id: output_fp
  doc: the output filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- make_prefs_file.py

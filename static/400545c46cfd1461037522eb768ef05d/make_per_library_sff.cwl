class: CommandLineTool
id: make_per_library_sff.py.cwl
inputs:
- id: input_sff
  doc: Input sff file (separate multiple files w/ comma) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_sff
- id: libdir
  doc: Directory containing ID list text files, one per library [REQUIRED]
  type: string
  inputBinding:
    prefix: --libdir
outputs: []
cwlVersion: v1.1
baseCommand:
- make_per_library_sff.py

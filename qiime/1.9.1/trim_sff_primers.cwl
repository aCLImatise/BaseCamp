class: CommandLineTool
id: trim_sff_primers.py.cwl
inputs:
- id: libdir
  doc: The directory containing per-library sff files [REQUIRED]
  type: string
  inputBinding:
    prefix: --libdir
- id: input_map
  doc: Path to the input mapping file describing the libraries [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_map
outputs: []
cwlVersion: v1.1
baseCommand:
- trim_sff_primers.py

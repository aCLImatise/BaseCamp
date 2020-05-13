class: CommandLineTool
id: mzml2isa.cwl
inputs:
- id: i
  doc: input folder or archive containing mzML files
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: out folder (new files will be created here)
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: study identifier (e.g. MTBLSxxx)
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: additional user provided metadata (JSON format)
  type: string
  inputBinding:
    prefix: -m
- id: j
  doc: launch different processes for parsing
  type: string
  inputBinding:
    prefix: -j
- id: n
  doc: do NOT split assay files based on polarity
  type: boolean
  inputBinding:
    prefix: -n
- id: c
  doc: do NOT group centroid & profile samples
  type: boolean
  inputBinding:
    prefix: -c
- id: w
  doc: warning control (with python default behaviour)
  type: string
  inputBinding:
    prefix: -W
- id: t
  doc: directory containing default template files
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: show more output (default if tqdm is not installed)
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mzml2isa

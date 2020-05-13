class: CommandLineTool
id: segtools_preprocess.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: clobber
  doc: Overwrite any existing output files.
  type: boolean
  inputBinding:
    prefix: --clobber
- id: quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: annotation
  doc: Read INFILE as an annotation, rather than as a segmentation (default).
  type: boolean
  inputBinding:
    prefix: --annotation
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-preprocess

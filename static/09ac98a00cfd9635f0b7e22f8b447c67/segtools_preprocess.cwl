class: CommandLineTool
id: segtools_preprocess.cwl
inputs:
- id: in_clobber
  doc: Overwrite any existing output files.
  type: boolean?
  inputBinding:
    prefix: --clobber
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_annotation
  doc: "Read INFILE as an annotation, rather than as a segmentation\n(default).\n"
  type: boolean?
  inputBinding:
    prefix: --annotation
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- segtools-preprocess

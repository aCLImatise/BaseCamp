class: CommandLineTool
id: guppy_round.cwl
inputs:
- id: in_out_dir
  doc: Specify the directory to write files to.
  type: boolean?
  inputBinding:
    prefix: --out-dir
- id: in_prefix
  doc: Specify a string to be prepended to filenames.
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_sig_figs
  doc: 'Set the number of significant figures used for rounding. Specify 0 for no
    rounding. Default: 3.'
  type: boolean?
  inputBinding:
    prefix: --sig-figs
- id: in_cut_off
  doc: 'Set the rounding inclusion cutoff for the ML weight ratio. Default: 0.01.'
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_round
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- guppy
- round

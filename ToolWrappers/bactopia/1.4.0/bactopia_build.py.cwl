class: CommandLineTool
id: bactopia_build.py.cwl
inputs:
- id: in_ext
  doc: 'Extension of the Conda environment files. Default: .yml'
  type: string?
  inputBinding:
    prefix: --ext
- id: in_force
  doc: Force overwrite of existing Conda environments.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: Print debug related text.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Only critical errors will be printed.
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_bac_topia
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_build
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bactopia-build.py
